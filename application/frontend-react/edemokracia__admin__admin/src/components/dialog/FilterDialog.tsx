///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: 'src/components/dialog/FilterDialog.tsx'
// Template name: actor/src/components/dialog/FilterDialog.tsx.hbs

import {
  Dialog,
  DialogTitle,
  DialogContent,
  DialogContentText,
  DialogActions,
  Button,
  Slide,
  Box,
  Container,
  Grid,
  TextField,
  MenuItem,
  Checkbox,
  FormControlLabel,
  InputAdornment,
  IconButton,
  Typography,
} from '@mui/material';
import { useTranslation } from 'react-i18next';
import type { TransitionProps } from '@mui/material/transitions';
import { DatePicker, DateTimePicker, TimePicker } from '@mui/x-date-pickers';
import { forwardRef, useEffect, useRef, useState } from 'react';
import type { ChangeEvent, ReactElement, Ref } from 'react';
import type {
  Filter,
  FilterDialogProps,
  FilterInputProps,
  FilterOperatorProps,
  FilterProps,
  Operation,
} from '../../components-api';
import { FilterType } from '../../components-api';
import { dateToJudoDateString, exists } from '../../utilities';
import { mainContainerPadding } from '../../theme';
import { _BooleanOperation, _EnumerationOperation, _NumericOperation, _StringOperation } from '@judo/data-api-common';
import { DropdownButton } from '../DropdownButton';
import { TrinaryLogicCombobox } from '../widgets/TrinaryLogicCombobox';
import { MdiIcon } from '../MdiIcon';

const getDefaultOperator = (filterType: FilterType) => {
  switch (filterType) {
    case FilterType.boolean:
      return _BooleanOperation['equals'];
    case FilterType.date:
      return _NumericOperation['equal'];
    case FilterType.dateTime:
      return _NumericOperation['equal'];
    // case FilterType.time:
    //   return _NumericOperation['equal'];
    case FilterType.enumeration:
      return _EnumerationOperation['equals'];
    case FilterType.numeric:
      return _NumericOperation['equal'];
    case FilterType.string:
      return _StringOperation['like'];
    case FilterType.trinaryLogic:
      return _BooleanOperation['equals'];
  }
};

const getOperationEnumValue = (filter: Filter, operator: string) => {
  switch (filter.filterOption.filterType) {
    case FilterType.boolean:
      return _BooleanOperation[operator as keyof typeof _BooleanOperation];
    case FilterType.date:
      return _NumericOperation[operator as keyof typeof _NumericOperation];
    case FilterType.dateTime:
      return _NumericOperation[operator as keyof typeof _NumericOperation];
    // case FilterType.time:
    //   return _NumericOperation[operator as keyof typeof _NumericOperation];
    case FilterType.enumeration:
      return _EnumerationOperation[operator as keyof typeof _BooleanOperation];
    case FilterType.numeric:
      return _NumericOperation[operator as keyof typeof _NumericOperation];
    case FilterType.string:
      return _StringOperation[operator as keyof typeof _StringOperation];
    case FilterType.trinaryLogic:
      return _BooleanOperation[operator as keyof typeof _BooleanOperation];
  }
};

const getOperatorsByFilter = (filter: Filter): string[] => {
  switch (filter.filterOption.filterType) {
    case FilterType.boolean:
      return Object.values(_BooleanOperation);
    case FilterType.date:
      return Object.values(_NumericOperation);
    case FilterType.dateTime:
      return Object.values(_NumericOperation);
    // case FilterType.time:
    //   return Object.values(_NumericOperation);
    case FilterType.enumeration:
      return Object.values(_EnumerationOperation);
    case FilterType.numeric:
      return Object.values(_NumericOperation);
    case FilterType.string:
      return Object.values(_StringOperation);
    case FilterType.trinaryLogic:
      return Object.values(_BooleanOperation);
  }
};

const FilterOperator = ({ filter, operatorId, valueId, setFilterOperator }: FilterOperatorProps) => {
  const onChangeHandler = (event: ChangeEvent<HTMLTextAreaElement | HTMLInputElement>) => {
    setFilterOperator(filter, getOperationEnumValue(filter, event.target.value));
  };

  return (
    <TextField
      name={'operation'}
      id={operatorId}
      label={'Operation'}
      select
      value={filter.filterBy.operator}
      onChange={onChangeHandler}
    >
      {getOperatorsByFilter(filter).map((item) => (
        <MenuItem id={valueId} key={item} value={item}>
          {/* TODO: do not forget localization here*/}
          {item}
        </MenuItem>
      ))}
    </TextField>
  );
};

const FilterInput = ({ filter, setFilterValue }: FilterInputProps) => {
  if (filter.filterOption.filterType === FilterType.enumeration && !exists(filter.filterOption.enumValues)) {
    throw new Error(`Missing enumValues from FilterOptions of "${filter.filterOption.attributeName}"`);
  }

  return (
    <>
      {(() => {
        switch (filter.filterOption.filterType) {
          case FilterType.boolean:
            return (
              <FormControlLabel
                control={
                  <Checkbox
                    checked={!!filter.filterBy.value}
                    onChange={(event) => setFilterValue(filter, !!event.target.value)}
                  />
                }
                label={filter.filterOption.attributeName}
              />
            );
          case FilterType.date:
            return (
              <DatePicker
                renderInput={(props) => <TextField {...props} />}
                label={filter.filterOption.attributeName}
                value={filter.filterBy.value ?? null}
                onChange={(newValue) => setFilterValue(filter, dateToJudoDateString(newValue))}
                InputProps={{
                  startAdornment: (
                    <InputAdornment position="start">
                      <MdiIcon path="calendar_month" />
                    </InputAdornment>
                  ),
                }}
              />
            );
          case FilterType.dateTime:
            return (
              <DateTimePicker
                renderInput={(props) => <TextField {...props} />}
                label={filter.filterOption.attributeName}
                value={filter.filterBy.value ?? null}
                onChange={(newValue) => setFilterValue(filter, newValue)}
                InputProps={{
                  startAdornment: (
                    <InputAdornment position="start">
                      <MdiIcon path="event" />
                    </InputAdornment>
                  ),
                }}
              />
            );
          // case FilterType.time:
          //   return (
          //     <TextField
          //       label={filter.filterOption.attributeName}
          //       value={filter.filterBy.value}
          //       onChange={(event) => setFilterValue(filter, event.target.value)}
          //       InputProps={{
          //         startAdornment: (
          //           <InputAdornment position="start">
          //             <MdiIcon path="clock-outline" />
          //           </InputAdornment>
          //         ),
          //       }}
          //     />
          //   );
          case FilterType.enumeration:
            return (
              <TextField
                label={filter.filterOption.attributeName}
                value={filter.filterBy.value}
                select
                onChange={(event) => setFilterValue(filter, event.target.value)}
              >
                {filter.filterOption.enumValues?.map((item) => (
                  <MenuItem key={item} value={item}>
                    {item}
                  </MenuItem>
                ))}
              </TextField>
            );
          case FilterType.numeric:
            return (
              <TextField
                label={filter.filterOption.attributeName}
                type="number"
                value={filter.filterBy.value}
                onChange={(event) => setFilterValue(filter, Number(event.target.value))}
                InputProps={{
                  startAdornment: (
                    <InputAdornment position="start">
                      <MdiIcon path="numbers" />
                    </InputAdornment>
                  ),
                }}
              />
            );
          case FilterType.string:
            return (
              <TextField
                label={filter.filterOption.attributeName}
                value={filter.filterBy.value}
                onChange={(event) => setFilterValue(filter, event.target.value)}
                InputProps={{
                  startAdornment: (
                    <InputAdornment position="start">
                      <MdiIcon path="abc" />
                    </InputAdornment>
                  ),
                }}
              />
            );
          case FilterType.trinaryLogic:
            return (
              <TrinaryLogicCombobox
                label={filter.filterOption.attributeName}
                value={filter.filterBy.value}
                onChange={(value: any) => setFilterValue(filter, value)}
              />
            );
        }
      })()}
    </>
  );
};

const FilterRow = ({ id, filter, closeHandler, setFilterOperator, setFilterValue }: FilterProps) => {
  return (
    <Grid item container spacing={2} alignItems={'center'}>
      <Grid item xs={4}>
        {filter && (
          <FilterOperator
            operatorId={`${id}-operator`}
            valueId={`${id}-value`}
            filter={filter}
            setFilterOperator={setFilterOperator}
          />
        )}
      </Grid>
      <Grid item xs={7}>
        {filter && (
          <FilterInput
            operatorId={`${id}-operator`}
            valueId={`${id}-value`}
            filter={filter}
            setFilterValue={setFilterValue}
          />
        )}
      </Grid>
      <Grid item xs={1}>
        <IconButton id={`${id}-close`} onClick={() => closeHandler(filter)}>
          <MdiIcon path="close" />
        </IconButton>
      </Grid>
    </Grid>
  );
};

const Transition = forwardRef(function Transition(
  props: TransitionProps & {
    children: ReactElement<any, any>;
  },
  ref: Ref<unknown>,
) {
  return <Slide direction="left" ref={ref} {...props} />;
});

export const FilterDialog = ({ id, filters, filterOptions, resolve, open, handleClose }: FilterDialogProps) => {
  const descriptionElementRef = useRef<HTMLElement>(null);
  const [tempFilters, setTempFilters] = useState<Filter[]>(filters ?? []);
  const { t } = useTranslation();

  useEffect(() => {
    if (open) {
      const { current: descriptionElement } = descriptionElementRef;
      if (descriptionElement !== null) {
        descriptionElement.focus();
      }
    }
  }, [open]);

  const updateFilterValue = (filter: Filter, value: any) => {
    setTempFilters((prevTempFilters) => {
      return prevTempFilters.map((tempFilter) => {
        if (filter.id === tempFilter.id) {
          return {
            ...tempFilter,
            filterBy: { value: value, operator: tempFilter.filterBy.operator },
          };
        }

        return tempFilter;
      });
    });
  };

  const updateFilterOperator = (filter: Filter, operator: Operation) => {
    setTempFilters((prevTempFilters) => {
      return prevTempFilters.map((tempFilter) => {
        if (filter.id === tempFilter.id) {
          return {
            ...tempFilter,
            filterBy: { value: tempFilter.filterBy.value, operator: operator },
          };
        }

        return tempFilter;
      });
    });
  };

  const filterCloseHandler = (filter: Filter) => {
    setTempFilters((prevTempFilters) => [...prevTempFilters.filter((tempFilter) => tempFilter.id !== filter.id)]);
  };

  const cancel = () => {
    handleClose();
    resolve(undefined);
  };

  const ok = () => {
    handleClose();
    resolve(tempFilters);
  };

  const clear = () => {
    setTempFilters([]);
  };

  return (
    <Dialog
      id={id}
      open={open}
      onClose={cancel}
      scroll="paper"
      TransitionComponent={Transition}
      disableEnforceFocus
      fullWidth
      maxWidth="sm"
      sx={{
        '& .MuiDialog-container': {
          justifyContent: 'flex-end',
        },
      }}
      PaperProps={{
        sx: {
          m: 0,
          height: '100%',
        },
      }}
    >
      <DialogTitle id={`${id}-dialog-title`}>
        <Typography component="span" color="text.primary" variant="h5">
          {t('judo.modal.filter.label', { defaultValue: 'Filter' }) as string}
        </Typography>
      </DialogTitle>
      <DialogContent dividers={true}>
        <DialogContentText id="scroll-dialog-description" ref={descriptionElementRef} tabIndex={-1}>
          <Container component="main" maxWidth="xs">
            <Box sx={mainContainerPadding}>
              <Grid container spacing={2}>
                {tempFilters.map((filter) => (
                  <FilterRow
                    id={filter.id}
                    key={filter.id}
                    filter={filter}
                    closeHandler={filterCloseHandler}
                    setFilterOperator={updateFilterOperator}
                    setFilterValue={updateFilterValue}
                  />
                ))}
                <Grid item container>
                  <DropdownButton
                    id={`${id}-dropdown`}
                    fullWidth={true}
                    showDropdownIcon={false}
                    menuItems={filterOptions.map((filterOption) => {
                      return {
                        id: filterOption.id,
                        label: filterOption.label ?? filterOption.attributeName,
                        onClick: () =>
                          setTempFilters((prevTempFilters) => [
                            ...prevTempFilters,
                            {
                              id: filterOption.id,
                              operationId: `${filterOption.id}-operation`,
                              valueId: `${filterOption.id}-value`,
                              filterOption: {
                                id: `${filterOption.id}-option`,
                                attributeName: filterOption.attributeName,
                                label: filterOption.label,
                                filterType: filterOption.filterType,
                                enumValues: filterOption.enumValues,
                              },
                              filterBy: {
                                operator: getDefaultOperator(filterOption.filterType),
                              },
                            },
                          ]),
                      };
                    })}
                  >
                    {t('judo.modal.filter.add-new-filter', { defaultValue: 'Add new filter' }) as string}
                  </DropdownButton>
                </Grid>
              </Grid>
            </Box>
          </Container>
        </DialogContentText>
      </DialogContent>
      <DialogActions>
        <Button id={`${id}-action-cancel`} fullWidth variant="outlined" onClick={cancel}>
          {t('judo.modal.filter.cancel', { defaultValue: 'Cancel' }) as string}
        </Button>
        {tempFilters.length > 0 && (
          <Button id={`${id}-action-clear-all`} fullWidth variant="outlined" onClick={clear}>
            {t('judo.modal.filter.clear-all', { defaultValue: 'Clear all' }) as string}
          </Button>
        )}
        <Button id={`${id}-action-apply`} fullWidth onClick={ok}>
          {t('judo.modal.filter.apply', { defaultValue: 'Apply' }) as string} {'(' + tempFilters.length + ')'}
        </Button>
      </DialogActions>
    </Dialog>
  );
};
