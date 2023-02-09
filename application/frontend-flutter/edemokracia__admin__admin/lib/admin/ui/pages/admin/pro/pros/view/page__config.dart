part of admin.ui.pages.admin.pro.pros.view;

class AdminProProsViewConfig {
  AdminProProsViewAdminProConsTableConfig consTableConfig = AdminProProsViewAdminProConsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminProProsViewAdminProProsTableConfig prosTableConfig = AdminProProsViewAdminProProsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminProProsViewAdminProCommentsTableConfig commentsTableConfig = AdminProProsViewAdminProCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );
  AdminProProsViewAdminProCreatedByTableConfig createdByTableConfig = AdminProProsViewAdminProCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminProProsViewPageBackAction backAction;
  AdminProProsViewPageExtendActions extendActions;
  AdminProProsViewPageTitleGenerator titleGenerator;
}
