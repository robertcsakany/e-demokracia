part of admin.ui.pages.admin.pro.pros.update;

class AdminProProsUpdateConfig {
  AdminProProsUpdateAdminProConsTableConfig consTableConfig = AdminProProsUpdateAdminProConsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminProProsUpdateAdminProProsTableConfig prosTableConfig = AdminProProsUpdateAdminProProsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminProProsUpdateAdminProCommentsTableConfig commentsTableConfig = AdminProProsUpdateAdminProCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );
  AdminProProsUpdateAdminProCreatedByTableConfig createdByTableConfig = AdminProProsUpdateAdminProCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminProProsUpdatePostTitleChanged postTitleChanged;
  AdminProProsUpdatePostCreatedChanged postCreatedChanged;
  AdminProProsUpdatePostDescriptionChanged postDescriptionChanged;
  AdminProProsUpdatePageBackAction backAction;
  AdminProProsUpdatePageExtendActions extendActions;
  AdminProProsUpdatePageTitleGenerator titleGenerator;
}
