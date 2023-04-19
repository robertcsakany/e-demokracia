//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/components/MdiIcon.tsx'
// Template name: actor/src/components/MdiIcon.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230419_114141_e53c8a6f_develop
// Template file: actor/src/components/MdiIcon.tsx.hbs

import { mapIcon, mapMimeTypeIcon } from '../utilities/icons';

export interface MdiIconProps {
  path: string;
  rotate?: 45 | 90 | 135 | 180 | 225 | 270 | 315;
  flip?: 'h' | 'v';
  spin?: boolean;
  color?: string;
  mimeType?: {
    type: string;
    subType?: string;
  };
}

export const MdiIcon = (props: MdiIconProps) => {
  const { path, rotate, flip, spin, color, mimeType } = props;
  const mappedPath = mimeType ? mapMimeTypeIcon(mimeType.type, mimeType.subType, mapIcon(path)) : mapIcon(path);
  const style = {
    color,
    width: '1.5rem',
    fontSize: 'large',
    height: '1.5rem',
    lineHeight: '1.5rem',
  };
  const className = `mdi mdi-${mappedPath.replace(/_/g, '-').replace(/ /g, '')} ${
    rotate ? `mdi-rotate-${rotate}` : ''
  } ${flip ? `mdi-flip-${flip}` : ''} ${spin ? 'mdi-spin' : ''}`.trim();

  return <span className={className} style={style}></span>;
};
