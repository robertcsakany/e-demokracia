part of admin.ui.pages.admin.con.cons.update;

class AdminConConsUpdateConfig {
  AdminConConsUpdateAdminConConsTableConfig consTableConfig = AdminConConsUpdateAdminConConsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminConConsUpdateAdminConProsTableConfig prosTableConfig = AdminConConsUpdateAdminConProsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminConConsUpdateAdminConCommentsTableConfig commentsTableConfig = AdminConConsUpdateAdminConCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );
  AdminConConsUpdateAdminConCreatedByTableConfig createdByTableConfig = AdminConConsUpdateAdminConCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminConConsUpdatePostTitleChanged postTitleChanged;
  AdminConConsUpdatePostCreatedChanged postCreatedChanged;
  AdminConConsUpdatePostDescriptionChanged postDescriptionChanged;
  AdminConConsUpdatePageBackAction backAction;
  AdminConConsUpdatePageExtendActions extendActions;
  AdminConConsUpdatePageTitleGenerator titleGenerator;
}
