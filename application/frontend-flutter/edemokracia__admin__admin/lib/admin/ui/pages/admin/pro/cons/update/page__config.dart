part of admin.ui.pages.admin.pro.cons.update;

class AdminProConsUpdateConfig {
  AdminProConsUpdateAdminConConsTableConfig consTableConfig = AdminProConsUpdateAdminConConsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminProConsUpdateAdminConProsTableConfig prosTableConfig = AdminProConsUpdateAdminConProsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminProConsUpdateAdminConCommentsTableConfig commentsTableConfig = AdminProConsUpdateAdminConCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );
  AdminProConsUpdateAdminConCreatedByTableConfig createdByTableConfig = AdminProConsUpdateAdminConCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminProConsUpdatePostTitleChanged postTitleChanged;
  AdminProConsUpdatePostCreatedChanged postCreatedChanged;
  AdminProConsUpdatePostDescriptionChanged postDescriptionChanged;
  AdminProConsUpdatePageBackAction backAction;
  AdminProConsUpdatePageExtendActions extendActions;
  AdminProConsUpdatePageTitleGenerator titleGenerator;
}
