part of admin.ui.pages.admin.con.pros.update;

class AdminConProsUpdateConfig {
  AdminConProsUpdateAdminProConsTableConfig consTableConfig = AdminConProsUpdateAdminProConsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminConProsUpdateAdminProProsTableConfig prosTableConfig = AdminConProsUpdateAdminProProsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminConProsUpdateAdminProCommentsTableConfig commentsTableConfig = AdminConProsUpdateAdminProCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );
  AdminConProsUpdateAdminProCreatedByTableConfig createdByTableConfig = AdminConProsUpdateAdminProCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminConProsUpdatePostTitleChanged postTitleChanged;
  AdminConProsUpdatePostCreatedChanged postCreatedChanged;
  AdminConProsUpdatePostDescriptionChanged postDescriptionChanged;
  AdminConProsUpdatePageBackAction backAction;
  AdminConProsUpdatePageExtendActions extendActions;
  AdminConProsUpdatePageTitleGenerator titleGenerator;
}
