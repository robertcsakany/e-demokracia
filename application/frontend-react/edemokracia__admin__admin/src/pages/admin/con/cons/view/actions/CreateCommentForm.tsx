///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionFormPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/actionForm.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Con::createComment#ButtonCallOperation
// Action: CallOperationAction

import { useState, useEffect, useCallback, Dispatch, SetStateAction, FC } from 'react';
import { useTranslation } from 'react-i18next';
import {
  Grid,
  DialogContent,
  DialogTitle,
  CardContent,
  IconButton,
  Button,
  DialogContentText,
  TextField,
  DialogActions,
  Typography,
  InputAdornment,
  Card,
} from '@mui/material';
import {
  GridRowId,
  GridRowParams,
  GridRenderCellParams,
  GridSelectionModel,
  GridSortItem,
  GridSortModel,
  GridColDef,
} from '@mui/x-data-grid';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { ComponentProxy } from '@pandino/react-hooks';
import { JudoIdentifiable } from '@judo/data-api-common';
import type { Dayjs } from 'dayjs';
import { useSnackbar } from 'notistack';
import { MdiIcon, ModeledTabs } from '../../../../../../components';
import { columnsActionCalculator } from '../../../../../../components/table';
import { useRangeDialog } from '../../../../../../components/dialog';
import {
  AggregationInput,
  AssociationButton,
  CollectionAssociationButton,
  TrinaryLogicCombobox,
} from '../../../../../../components/widgets';
import { FilterOption, FilterType } from '../../../../../../components-api';
import {
  CreateCommentInputStored,
  CreateCommentInputQueryCustomizer,
  CreateCommentInput,
  AdminCon,
  AdminConStored,
  AdminConQueryCustomizer,
} from '../../../../../../generated/data-api';
import { createCommentInputServiceImpl, adminConServiceImpl } from '../../../../../../generated/data-axios';
import {
  useErrorHandler,
  ERROR_PROCESSOR_HOOK_INTERFACE_KEY,
  fileHandling,
  processQueryCustomizer,
  TableRowAction,
  uiDateToServiceDate,
  stringToBooleanSelect,
  booleanToStringSelect,
} from '../../../../../../utilities';
import { baseTableConfig, baseColumnConfig, toastConfig } from '../../../../../../config';
import { CUSTOM_VISUAL_ELEMENT_INTERFACE_KEY, CustomFormVisualElementProps } from '../../../../../../custom';

export interface CreateCommentFormProps {
  successCallback: () => void;
  cancel: () => void;
  owner: AdminConStored;
}

export function CreateCommentForm({ successCallback, cancel, owner }: CreateCommentFormProps) {
  const { t } = useTranslation();
  const { openRangeDialog } = useRangeDialog();
  const { downloadFile, uploadFile } = fileHandling();

  const handleFetchError = useErrorHandler(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=Fetch))`,
  );
  const handleActionError = useErrorHandler<CreateCommentInput>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=CallOperation)(component=CreateCommentForm))`,
  );
  const { enqueueSnackbar } = useSnackbar();
  const [isLoading, setIsLoading] = useState<boolean>(false);
  const [data, setData] = useState<CreateCommentInput>({} as unknown as CreateCommentInput);
  const [validation, setValidation] = useState<Map<keyof CreateCommentInput, string>>(new Map());
  const [editMode, setEditMode] = useState<boolean>(true);
  const [payloadDiff] = useState<Record<keyof CreateCommentInput, any>>(
    {} as unknown as Record<keyof CreateCommentInput, any>,
  );
  const storeDiff: (attributeName: keyof CreateCommentInput, value: any) => void = useCallback(
    (attributeName: keyof CreateCommentInput, value: any) => {
      payloadDiff[attributeName] = value;
      setData({ ...data, [attributeName]: value });
    },
    [data],
  );
  const title: string = t('edemokracia.admin.Con.createComment.Input', { defaultValue: 'Add comment' });

  const fetchData = async () => {
    setIsLoading(true);

    try {
      const res = await createCommentInputServiceImpl.getTemplate();
      setData(res);
    } catch (e) {
      handleFetchError(e);
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
      handleActionError(error, { setValidation }, data);
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <>
      <DialogTitle>
        {title}
        <IconButton
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminConConsViewEdemokraciaAdminAdminEdemokraciaAdminConCreateCommentButtonCallOperation-dialog-close"
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
        <Grid container xs={12} sm={12} spacing={2} direction="column" alignItems="stretch" justifyContent="flex-start">
          <Grid item xs={12} sm={12}>
            <Card id="FlexedemokraciaAdminAdminEdemokraciaAdminConCreateCommentInputDefaultCreateCommentInputFormCommentLabelWrapper">
              <CardContent>
                <Grid container direction="column" alignItems="stretch" justifyContent="flex-start" spacing={2}>
                  <Grid item xs={12} sm={12}>
                    <Grid container direction="row" alignItems="center" justifyContent="flex-start">
                      <MdiIcon path="forum" />
                      <Typography
                        id="LabeledemokraciaAdminAdminEdemokraciaAdminConCreateCommentInputDefaultCreateCommentInputFormCommentLabelWrapperCommentLabel"
                        variant="h6"
                        component="h1"
                      >
                        {t('edemokracia.admin.Con.createComment.CreateCommentInput.Form.comment.comment.Label', {
                          defaultValue: 'Add comment',
                        })}
                      </Typography>
                    </Grid>
                  </Grid>

                  <Grid item xs={12} sm={12}>
                    <Grid
                      id="FlexedemokraciaAdminAdminEdemokraciaAdminConCreateCommentInputDefaultCreateCommentInputFormCommentLabelWrapperComment"
                      container
                      direction="row"
                      alignItems="stretch"
                      justifyContent="flex-start"
                      spacing={2}
                    >
                      <Grid item xs={12} sm={12}>
                        <TextField
                          required
                          name="comment"
                          id="TextAreaedemokraciaAdminAdminEdemokraciaAdminConCreateCommentInputDefaultCreateCommentInputFormCommentLabelWrapperCommentComment"
                          label={
                            t('edemokracia.admin.Con.createComment.CreateCommentInput.Form.comment.comment.comment', {
                              defaultValue: 'Comment',
                            }) as string
                          }
                          value={data.comment}
                          className={!editMode ? 'JUDO-viewMode' : undefined}
                          disabled={false}
                          multiline
                          minRows={4.0}
                          error={!!validation.get('comment')}
                          helperText={validation.get('comment')}
                          onChange={(event) => {
                            setEditMode(true);
                            storeDiff('comment', event.target.value);
                          }}
                          InputLabelProps={{ shrink: true }}
                          InputProps={{
                            startAdornment: (
                              <InputAdornment position="start">
                                <MdiIcon path="text_fields" />
                              </InputAdornment>
                            ),
                          }}
                        />
                      </Grid>
                    </Grid>
                  </Grid>
                </Grid>
              </CardContent>
            </Card>
          </Grid>

          <Grid item xs={12} sm={12}>
            <Grid
              id="FlexedemokraciaAdminAdminEdemokraciaAdminConCreateCommentInputDefaultCreateCommentInputFormButtons"
              container
              direction="row"
              alignItems="flex-start"
              justifyContent="flex-start"
              spacing={2}
            >
              <Grid item xs={12} sm={12} md={4.0}></Grid>

              <Grid item xs={12} sm={12} md={4.0}></Grid>
            </Grid>
          </Grid>
        </Grid>
      </DialogContent>
      <DialogActions>
        <Button
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminConConsViewEdemokraciaAdminAdminEdemokraciaAdminConCreateCommentButtonCallOperation-action-form-action-cancel"
          variant="text"
          onClick={() => cancel()}
          disabled={isLoading}
        >
          {t('judo.pages.cancel', { defaultValue: 'Cancel' }) as string}
        </Button>
        <Button
          id="CallOperationActionedemokraciaAdminAdminEdemokraciaAdminConConsViewEdemokraciaAdminAdminEdemokraciaAdminConCreateCommentButtonCallOperation-action-form-action-submit"
          variant="contained"
          onClick={() => submit()}
          disabled={isLoading}
        >
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
