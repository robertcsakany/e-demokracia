///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionFormsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Con::createComment#ButtonCallOperation
// Owner Page name: edemokracia::admin::VoteDefinition.debate#View
// Action: CallOperationAction

import { useState, useEffect, useCallback, Dispatch, SetStateAction } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Button,
  IconButton,
  DialogActions,
  DialogContent,
  DialogContentText,
  DialogTitle,
  Paper,
  Box,
  Container,
  Grid,
  InputAdornment,
  TextField,
  MenuItem,
  Typography,
  Card,
} from '@mui/material';
import { DatePicker, DateTimePicker, TimePicker } from '@mui/x-date-pickers';
import {
  DataGrid,
  GridRowId,
  GridSortModel,
  GridSelectionModel,
  GridToolbarContainer,
  GridRenderCellParams,
  GridRowParams,
  GridColDef,
} from '@mui/x-data-grid';
import { JudoIdentifiable } from '@judo/data-api-common';
import {
  MdiIcon,
  ModeledTabs,
  TrinaryLogicCombobox,
  AggregationInput,
  useSnackbar,
  useRangeDialog,
  columnsActionCalculator,
} from '../../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../../components-api';
import {
  CreateCommentInputStored,
  CreateCommentInputQueryCustomizer,
  CreateCommentInput,
  AdminConStored,
  AdminDebateStored,
} from '../../../../../../../generated/data-api';
import { createCommentInputServiceImpl, adminConServiceImpl } from '../../../../../../../generated/data-axios';
import { errorHandling, fileHandling, processQueryCustomizer, TableRowAction } from '../../../../../../../utilities';
import { baseTableConfig, baseColumnConfig } from '../../../../../../../config';

export interface AdminConCreateCommentFormProps {
  successCallback: () => void;
  cancel: () => void;
  owner: AdminDebateStored;
}

export function AdminConCreateCommentForm({ successCallback, cancel, owner }: AdminConCreateCommentFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();

  const [enqueueSnackbar] = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<CreateCommentInput>({} as unknown as CreateCommentInput);
  const [validation, setValidation] = useState<Map<string, string>>(new Map());
  const [editMode] = useState<boolean>(true);
  const storeDiff: (attributeName: string, value: any) => void = useCallback(
    (attributeName: string, value: any) => {
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const title: string = t('edemokracia.admin.Con.createComment.CreateCommentInput.Form', {
    defaultValue: 'Add comment',
  });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await createCommentInputServiceImpl.getTemplate();
      setData(res);
    } catch (e) {
      console.error(e);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  // TODO: implement confirmation handling
  const submit = async () => {
    setIsLoading(true);

    try {
      await adminConServiceImpl.createComment(owner, data);

      successCallback();
    } catch (error) {
      errorHandling(error, enqueueSnackbar, { setValidation });
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <>
      <DialogTitle>
        {title}
        <IconButton
          aria-label="close"
          onClick={() => cancel()}
          sx={{
            position: 'absolute',
            right: 8,
            top: 8,
            color: (theme) => theme.palette.grey[500],
          }}
        >
          <MdiIcon path="close" />
        </IconButton>
      </DialogTitle>
      <DialogContent dividers>
        <Grid container xs={12} sm={12} spacing={2} direction="column" alignItems="stretch">
          <Grid container item xs={12} sm={12.0} direction="column" alignItems="stretch" justifyContent="flex-start">
            <Card>
              <Grid container item alignItems="center" justifyContent="flex-start">
                <MdiIcon path="forum" />
                <Typography variant="h6" component="h1">
                  {t('edemokracia.admin.Con.createComment.CreateCommentInput.Form.comment.comment.Label', {
                    defaultValue: 'Add comment',
                  })}
                </Typography>
              </Grid>

              <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
                <Grid item xs={12}>
                  <TextField
                    name="comment"
                    id="TextArea@edemokracia/admin/Admin/edemokracia/admin/Con.createComment/Input/default/CreateCommentInput_Form/comment/LabelWrapper/comment/comment"
                    label={
                      t('edemokracia.admin.Con.createComment.CreateCommentInput.Form.comment.comment.comment', {
                        defaultValue: 'Comment',
                      }) as string
                    }
                    value={data.comment}
                    multiline
                    minRows={4.0}
                    error={!!validation.get('comment')}
                    helperText={validation.get('comment')}
                    onChange={(event) => storeDiff('comment', event.target.value)}
                    className={false || !editMode ? 'Mui-readOnly' : undefined}
                    InputLabelProps={{ shrink: true }}
                    InputProps={{
                      readOnly: false || !editMode,
                      startAdornment: (
                        <InputAdornment position="start">
                          <MdiIcon path="text_fields" />
                        </InputAdornment>
                      ),
                    }}
                  />
                </Grid>
              </Grid>
            </Card>
          </Grid>

          <Grid container item xs={12} alignItems="flex-start" justifyContent="flex-start" spacing={2}>
            <Grid item xs={12} sm={4.0}></Grid>

            <Grid item xs={12} sm={4.0}></Grid>
          </Grid>
        </Grid>
      </DialogContent>
      <DialogActions>
        <Button variant="text" onClick={() => cancel()} disabled={isLoading}>
          {t('judo.pages.cancel', { defaultValue: 'Cancel' }) as string}
        </Button>
        <Button variant="contained" onClick={() => submit()} disabled={isLoading}>
          {
            t('edemokracia.admin.Con.createComment.Input.edemokracia.admin.Con.createComment.input.ButtonSaveInput', {
              defaultValue: 'Ok',
            }) as string
          }
        </Button>
      </DialogActions>
    </>
  );
}
