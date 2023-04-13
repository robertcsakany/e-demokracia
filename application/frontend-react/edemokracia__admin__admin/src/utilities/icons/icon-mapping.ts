//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/utilities/icons/icon-mapping.ts'
// Template name: actor/src/utilities/icons/icon-mapping.ts
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_041932_3a0d360a_develop
// Template file: actor/src/utilities/icons/icon-mapping.ts.hbs

// If defining dashed and underscored versions of a path becomes cumbersome, we can modify the `mapIcon` function
// to check for regexp-replaced values as well.

export const iconMap: Record<string, string> = {
  'note-add': 'file-document-plus',
  note_add: 'file-document-plus',
  schedule: 'clock-outline',
  'table-rows': 'table-row',
  table_rows: 'table-row',
  'star-rate': 'star',
  star_rate: 'star',
  'supervisor-account': 'account-multiple',
  supervisor_account: 'account-multiple',
  accessibility: 'human',
  'check-box': 'checkbox-outline',
  check_box: 'checkbox-outline',
};

export const mapIcon = (path: string): string => {
  return iconMap[path] || path;
};

export const mapMimeTypeIcon = (type: string, subType?: string, fallback?: string): string => {
  if (type === 'image') {
    return 'file-image';
  }
  if (type === 'video') {
    return 'multimedia';
  }
  if (type === 'audio') {
    return 'multimedia';
  }
  if (type === 'text') {
    if (subType === 'xml') {
      return 'file-xml-box';
    }
  }
  if (type === 'application') {
    if (subType === 'pdf') {
      return 'file-pdf-box';
    }
    if (subType === 'vnd.ms-excel' || subType === 'vnd.oasis.opendocument.spreadsheet') {
      return 'file-excel';
    }
    if (subType === 'msword' || subType === 'vnd.openxmlformats-officedocument.wordprocessingml.document') {
      return 'file-word';
    }
    if (
      subType === 'vnd.ms-powerpoint' ||
      subType === 'vnd.openxmlformats-officedocument.presentationml.presentation'
    ) {
      return 'presentation';
    }
    if (subType === 'vnd.rar' || subType === 'x-tar' || subType === 'x-7z-compressed' || subType === 'zip') {
      return 'presentation';
    }
  }
  return fallback || 'attachment';
};
