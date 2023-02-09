part of admin.ui.pages.admin.pro.cons.view;

class AdminProConsViewConfig {
  AdminProConsViewAdminConConsTableConfig consTableConfig = AdminProConsViewAdminConConsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminProConsViewAdminConProsTableConfig prosTableConfig = AdminProConsViewAdminConProsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminProConsViewAdminConCommentsTableConfig commentsTableConfig = AdminProConsViewAdminConCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );
  AdminProConsViewAdminConCreatedByTableConfig createdByTableConfig = AdminProConsViewAdminConCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminProConsViewPageBackAction backAction;
  AdminProConsViewPageExtendActions extendActions;
  AdminProConsViewPageTitleGenerator titleGenerator;
}
