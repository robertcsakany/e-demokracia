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
