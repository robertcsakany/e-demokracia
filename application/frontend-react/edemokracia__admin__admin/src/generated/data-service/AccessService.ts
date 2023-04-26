import { JudoDownloadFile, JudoMetaData } from '@judo/data-api-common';
import { AdminAdminPrincipalUserStored } from '../data-api';

export interface AccessService {
  getPrincipal(): Promise<AdminAdminPrincipalUserStored>;

  getMetaData(): Promise<JudoMetaData>;

  uploadFile(attributePath: string, file: File): Promise<string>;

  downloadFile(downloadToken: string): Promise<any>;
}
