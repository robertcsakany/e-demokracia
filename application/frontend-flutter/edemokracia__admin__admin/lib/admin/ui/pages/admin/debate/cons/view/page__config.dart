part of admin.ui.pages.admin.debate.cons.view;

class AdminDebateConsViewConfig {
  AdminDebateConsViewAdminConConsTableConfig consTableConfig = AdminDebateConsViewAdminConConsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminDebateConsViewAdminConProsTableConfig prosTableConfig = AdminDebateConsViewAdminConProsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminDebateConsViewAdminConCommentsTableConfig commentsTableConfig = AdminDebateConsViewAdminConCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );
  AdminDebateConsViewAdminConCreatedByTableConfig createdByTableConfig = AdminDebateConsViewAdminConCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminDebateConsViewPageBackAction backAction;
  AdminDebateConsViewPageExtendActions extendActions;
  AdminDebateConsViewPageTitleGenerator titleGenerator;
}
