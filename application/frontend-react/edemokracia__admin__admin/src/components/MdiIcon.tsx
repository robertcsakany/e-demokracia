import { mapIcon, mapMimeTypeIcon } from '../utilities';

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
