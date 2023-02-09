part of admin.ui.pages.admin.con.pros.view;

class AdminConProsViewConfig {
  AdminConProsViewAdminProConsTableConfig consTableConfig = AdminConProsViewAdminProConsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminConProsViewAdminProProsTableConfig prosTableConfig = AdminConProsViewAdminProProsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminConProsViewAdminProCommentsTableConfig commentsTableConfig = AdminConProsViewAdminProCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );
  AdminConProsViewAdminProCreatedByTableConfig createdByTableConfig = AdminConProsViewAdminProCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminConProsViewPageBackAction backAction;
  AdminConProsViewPageExtendActions extendActions;
  AdminConProsViewPageTitleGenerator titleGenerator;
}
