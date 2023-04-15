//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/utilities/file-handling.ts'
// Template name: actor/src/utilities/file-handling.ts
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/utilities/file-handling.ts.hbs

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
