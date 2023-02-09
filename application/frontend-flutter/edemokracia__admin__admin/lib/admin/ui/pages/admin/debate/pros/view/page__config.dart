part of admin.ui.pages.admin.debate.pros.view;

class AdminDebateProsViewConfig {
  AdminDebateProsViewAdminProConsTableConfig consTableConfig = AdminDebateProsViewAdminProConsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminDebateProsViewAdminProProsTableConfig prosTableConfig = AdminDebateProsViewAdminProProsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminDebateProsViewAdminProCommentsTableConfig commentsTableConfig = AdminDebateProsViewAdminProCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );
  AdminDebateProsViewAdminProCreatedByTableConfig createdByTableConfig = AdminDebateProsViewAdminProCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminDebateProsViewPageBackAction backAction;
  AdminDebateProsViewPageExtendActions extendActions;
  AdminDebateProsViewPageTitleGenerator titleGenerator;
}
