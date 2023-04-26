import { AxiosResponse } from 'axios';
import { JudoDownloadFile, JudoMetaData, JudoToken } from '@judo/data-api-common';
import { JudoAxiosService } from './JudoAxiosService';
import { AdminAdminPrincipalUserStored } from '../data-api';
import { AccessService } from '../data-service';

export class AccessServiceImpl extends JudoAxiosService implements AccessService {
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   * @return {Promise<AdminAdminPrincipalUser>}
   */
  async getPrincipal(): Promise<AdminAdminPrincipalUserStored> {
    const response = await this.axios.get(this.getPathForActor('admin/Admin/~principal'));

    return response.data;
  }

  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   * @return {Promise<JudoMetaData>}
   */
  async getMetaData(): Promise<JudoMetaData> {
    const response = await this.axios.get(this.getPathForActor('admin/Admin/~meta'));
    return response.data;
  }
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 400, 401, 403.
   * @return {Promise<string>}
   */
  async uploadFile(attributePath: string, file: File): Promise<any> {
    const responseToken: any = await this.axios.post(this.getPathForActor(attributePath + '/~upload-token'));
    if (!responseToken) {
      throw new Error(`Could not upload file, could not obtain Upload Token!`);
    }
    const formData = new FormData();
    formData.append(file.name, file);
    const response = await this.axios.post(this.axiosProvider.getFilePath('upload'), formData, {
      headers: {
        'Content-Type': 'multipart/form-data',
        'X-Token': responseToken.data.token,
      },
    });

    if (response.status === 200) {
      return response;
    } else {
      throw new Error(`Unexpected upload response: ${response.status}\n${response}`);
    }
  }
  /**
   * @throws {AxiosError} With data containing {@link Array<FeedbackItem>} for status codes: 401, 403.
   * @return {Promise<JudoDownloadFile>}
   */
  async downloadFile(downloadToken: string): Promise<any> {
    const response = await this.axios.get(this.axiosProvider.getFilePath('download'), {
      responseType: 'blob',
      headers: {
        'X-Token': downloadToken,
      },
    });
    return response;
  }
}
