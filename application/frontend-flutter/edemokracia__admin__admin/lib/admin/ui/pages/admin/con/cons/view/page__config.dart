part of admin.ui.pages.admin.con.cons.view;

class AdminConConsViewConfig {
  AdminConConsViewAdminConConsTableConfig consTableConfig = AdminConConsViewAdminConConsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminConConsViewAdminConProsTableConfig prosTableConfig = AdminConConsViewAdminConProsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminConConsViewAdminConCommentsTableConfig commentsTableConfig = AdminConConsViewAdminConCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );
  AdminConConsViewAdminConCreatedByTableConfig createdByTableConfig = AdminConConsViewAdminConCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminConConsViewPageBackAction backAction;
  AdminConConsViewPageExtendActions extendActions;
  AdminConConsViewPageTitleGenerator titleGenerator;
}
