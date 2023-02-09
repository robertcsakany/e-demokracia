import { JudoStored, QueryCustomizer } from '@judo/data-api-common';
import { accessServiceImpl } from '../generated/data-axios';

export type FileHandlingHook = () => {
  downloadFile: (data: any, attributeName: string) => Promise<void>;
  uploadFile: (data: any, attributeName: string, files: any[], path: string) => Promise<any | void>;
};

export const fileHandling: FileHandlingHook = () => {
  const downloadFile = async (data: any, attributeName: string) => {
    const response = await accessServiceImpl.downloadFile(data[attributeName]);

    if (response && response.status === 200) {
      const fileName = response.headers['content-disposition'].match(/filename=\"(.*)\"/)[1];
      const url = window.URL.createObjectURL(new Blob([response.data]));
      const link = document.createElement('a');
      link.href = url;
      link.setAttribute('download', fileName);
      document.body.appendChild(link);
      link.click();
      document.body.removeChild(link);
    } else {
      throw new Error('Error processing download response: ' + response);
    }
  };

  const uploadFile = async (data: any, attributeName: string, files: any[], path: string): Promise<any | void> => {
    const response = await accessServiceImpl.uploadFile(path, files[0]);
    try {
      if (response && response.status === 200) {
        return response.data.files[0];
      }

      throw new Error('Could not process upload response: ' + response);
    } catch (err) {
      console.error(response);
      console.error(err);
    }
  };

  return {
    downloadFile,
    uploadFile,
  };
};
