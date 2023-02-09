part of admin.ui.pages.admin.debate.cons.update;

class AdminDebateConsUpdateConfig {
  AdminDebateConsUpdateAdminConConsTableConfig consTableConfig = AdminDebateConsUpdateAdminConConsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminDebateConsUpdateAdminConProsTableConfig prosTableConfig = AdminDebateConsUpdateAdminConProsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminDebateConsUpdateAdminConCommentsTableConfig commentsTableConfig = AdminDebateConsUpdateAdminConCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );
  AdminDebateConsUpdateAdminConCreatedByTableConfig createdByTableConfig = AdminDebateConsUpdateAdminConCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminDebateConsUpdatePostTitleChanged postTitleChanged;
  AdminDebateConsUpdatePostCreatedChanged postCreatedChanged;
  AdminDebateConsUpdatePostDescriptionChanged postDescriptionChanged;
  AdminDebateConsUpdatePageBackAction backAction;
  AdminDebateConsUpdatePageExtendActions extendActions;
  AdminDebateConsUpdatePageTitleGenerator titleGenerator;
}
