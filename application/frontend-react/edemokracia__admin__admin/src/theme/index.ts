//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/theme/index.ts'
// Template name: actor/src/theme/index.ts
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/theme/index.ts.hbs

import { alpha, createTheme } from '@mui/material';
import type {} from '@mui/x-data-grid/themeAugmentation';
import { mainContainerPadding } from './extras';
import { applicationTheme } from './application-theme';

const paletteTheme = createTheme({
  palette: {
    mode: 'light',
    primary: {
      main: '#3C4166FF',
    },
    secondary: {
      main: '#E7501DFF',
    },
    text: {
      primary: '#17191DFF',
      secondary: '#434448FF',
    },
    background: {
      default: '#FAFAFAFF',
    },
    subtitleColor: {
      main: '#8c8c8c',
    },
  },
});

const baseTheme = createTheme(paletteTheme, {
  typography: {
    h5: {
      fontWeight: 500,
      fontSize: 26,
      letterSpacing: 0.5,
    },
  },
  shape: {
    borderRadius: 8,
  },
  mixins: {
    toolbar: {
      minHeight: 48,
    },
  },
  components: {
    MuiAppBar: {
      styleOverrides: {
        colorPrimary: {
          backgroundColor: paletteTheme.palette.background.default,
        },
      },
    },
    MuiButton: {
      defaultProps: {
        variant: 'contained',
        size: 'small',
      },
      styleOverrides: {
        root: {
          textTransform: 'none',
          borderRadius: '20px 20px 20px 20px',
          paddingLeft: 15,
          paddingRight: 15,
        },
        contained: {
          boxShadow: 'none',
          '&:active': {
            boxShadow: 'none',
          },
        },
        outlined: {
          border: '2px solid',
          fontWeight: 'bold',
          '&:hover': {
            border: '2px solid',
            background: alpha(paletteTheme.palette.primary.main, 0.15),
          },
          '&:disabled': {
            border: '2px solid',
          },
        },
      },
    },
    MuiInputLabel: {
      styleOverrides: {
        root: {
          color: paletteTheme.palette.subtitleColor.main,
          fontWeight: 500,
          fontSize: 16,
          '&.Mui-focused': {
            color: paletteTheme.palette.subtitleColor.main,
          },
        },
      },
    },
    MuiTextField: {
      defaultProps: {
        fullWidth: true,
        variant: 'filled',
        color: 'secondary',
      },
      styleOverrides: {
        root: {
          '&.JUDO-viewMode:not(.Mui-readOnly):not(.Mui-disabled) .MuiInputBase-root': {
            background: 'transparent',
          },
          '.MuiInputBase-root.Mui-readOnly': {
            background: 'transparent',
          },
          '.MuiInputBase-root.Mui-disabled': {
            background: 'transparent',
          },
        },
      },
    },
    MuiRadio: {
      defaultProps: {
        color: 'secondary',
      },
    },
    MuiSelect: {
      styleOverrides: {
        filled: {
          '&:focus': {
            backgroundColor: 'transparent',
          },
        },
      },
    },
    MuiDataGrid: {
      styleOverrides: {
        root: {
          border: 'none',
        },
        toolbarContainer: {
          padding: '8px 8px 4px 8px',
        },
      },
    },
    MuiPaper: {
      styleOverrides: {
        rounded: {
          boxShadow: '0px 0px 8px 1px rgba(0,0,0,0.05)',
          borderRadius: 16,
        },
      },
    },
    MuiDrawer: {
      styleOverrides: {
        paper: {
          border: 'none',
          boxShadow: '0px 0px 8px 1px rgba(0,0,0,0.05)',
        },
      },
    },
    MuiIconButton: {
      styleOverrides: {
        root: {
          color: paletteTheme.palette.secondary.main,
          padding: paletteTheme.spacing(1),
        },
      },
    },
    MuiTooltip: {
      styleOverrides: {
        tooltip: {
          borderRadius: 4,
        },
      },
    },
    MuiDivider: {
      styleOverrides: {
        root: {
          backgroundColor: 'rgb(255,255,255,0.15)',
        },
        middle: {
          marginTop: 8,
          marginBottom: 8,
        },
      },
    },
    MuiListItemButton: {
      defaultProps: {
        disableTouchRipple: true,
      },
    },
    MuiListItemText: {
      styleOverrides: {
        primary: {
          fontSize: 14,
          fontWeight: paletteTheme.typography.fontWeightMedium,
        },
      },
    },
    MuiListItemIcon: {
      styleOverrides: {
        root: {
          color: 'inherit',
          minWidth: 'auto',
          marginRight: paletteTheme.spacing(2),
          '& svg': {
            fontSize: 20,
          },
        },
      },
    },
    MuiAvatar: {
      styleOverrides: {
        root: {
          width: 32,
          height: 32,
        },
      },
    },
    MuiCard: {
      styleOverrides: {
        root: {
          width: '100%',
          length: '100%',
        },
      },
    },
    MuiDialog: {
      styleOverrides: {
        root: {
          '> .MuiDialog-container > .MuiPaper-root': {
            backgroundColor: paletteTheme.palette.background.default,
          },
        },
      },
    },
    MuiList: {
      styleOverrides: {
        root: {
          '.MuiListSubheader-root': {
            color: paletteTheme.palette.subtitleColor.main,
          },
        },
      },
    },
  },
});

const theme = createTheme(baseTheme, applicationTheme);

declare module '@mui/material/styles' {
  interface Palette {
    subtitleColor: Palette['primary'];
  }

  // allow configuration using `createTheme`
  interface PaletteOptions {
    subtitleColor?: PaletteOptions['primary'];
  }
}

export { mainContainerPadding, paletteTheme, baseTheme, theme };
