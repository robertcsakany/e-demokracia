import { useRef, useCallback } from 'react';
import { Button, ButtonBase, Grid, IconButton, InputAdornment, TextField } from '@mui/material';
import { useSnackbar } from 'notistack';
import { useTranslation } from 'react-i18next';
import jwt_decode from 'jwt-decode';
import { toastConfig } from '../../config';
import { MdiIcon } from '../MdiIcon';
import { fileHandling } from '../../utilities';

interface BinaryInputProps<P> {
  label: string;
  downloadId: string;
  data: P;
  attributeName: keyof P;
  attributePath: string;
  validation: Map<keyof P, string>;
  editMode?: boolean;
  disabled?: boolean;
  readonly?: boolean;
  required?: boolean;
  uploadId?: string;
  uploadCallback?: (uploadedData: { token: string }) => Promise<any>;
  icon?: string;
  mimeType?: {
    type: string;
    subType: string;
  };
}

export function BinaryInput<P>(props: BinaryInputProps<P>) {
  const fileInput = useRef<HTMLInputElement>(null);
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { enqueueSnackbar } = useSnackbar();
  const { t } = useTranslation();
  const placeholderText = t('judo.files.no-file-present', { defaultValue: 'No file present' }) as string;

  const extractFileName = useCallback(
    (token?: string) => {
      return extractFileNameFromToken(token, placeholderText);
    },
    [props.data],
  );

  return (
    <Grid container item direction="row" justifyContent="center" alignItems="center">
      <Grid item xs>
        <TextField
          required={props.required}
          name={props.downloadId}
          id={props.downloadId}
          label={props.label}
          value={extractFileName(props.data[props.attributeName] as string | undefined)}
          className="JUDO-viewMode"
          disabled={props.disabled}
          error={!!props.validation.get(props.attributeName)}
          helperText={props.validation.get(props.attributeName)}
          fullWidth
          sx={{
            '& .MuiInputBase-input': {
              overflow: 'hidden',
              textOverflow: 'ellipsis',
            },
          }}
          InputLabelProps={{ shrink: true }}
          InputProps={
            props.icon
              ? {
                  startAdornment: (
                    <InputAdornment position="start">
                      <MdiIcon path={props.icon} />
                    </InputAdornment>
                  ),
                }
              : {}
          }
        />
      </Grid>
      <Grid item xs="auto">
        <IconButton
          disabled={props.disabled || !props.data[props.attributeName]}
          id={props.downloadId}
          onClick={() => downloadFile(props.data, props.attributeName as string)}
        >
          <MdiIcon path="download" mimeType={props.mimeType} />
        </IconButton>
      </Grid>
      {!props.readonly && (
        <Grid item xs="auto">
          <IconButton disabled={props.disabled} id={props.uploadId!} onClick={() => fileInput.current!.click()}>
            <input
              ref={fileInput}
              hidden
              type="file"
              accept={props.mimeType && `${props.mimeType.type}/${props.mimeType.subType}`}
              onChange={async (event: any) => {
                try {
                  const uploadedData = await uploadFile(
                    props.data,
                    props.attributeName as string,
                    event.target.files,
                    props.attributePath,
                  );
                  if (uploadedData) {
                    if (uploadedData.error) {
                      enqueueSnackbar(t('judo.files.upload-error', { defaultValue: uploadedData.error }) as string, {
                        variant: 'error',
                        ...toastConfig.error,
                      });
                      console.error(uploadedData);
                      return;
                    }
                    const fileName = extractFileName(uploadedData.token);
                    enqueueSnackbar(
                      t('judo.files.upload-success', {
                        defaultValue: '{{fileName}} successfully uploaded.',
                        fileName,
                      }) as string,
                      {
                        variant: 'success',
                        ...toastConfig.success,
                      },
                    );
                    props.uploadCallback!(uploadedData);
                  }
                } catch (err) {
                  enqueueSnackbar(
                    t('judo.files.upload-error', { defaultValue: 'An error occurred during file upload!' }) as string,
                    {
                      variant: 'error',
                      ...toastConfig.error,
                    },
                  );
                  console.error(err);
                }
              }}
            />
            <MdiIcon path="upload" />
          </IconButton>
        </Grid>
      )}
    </Grid>
  );
}
