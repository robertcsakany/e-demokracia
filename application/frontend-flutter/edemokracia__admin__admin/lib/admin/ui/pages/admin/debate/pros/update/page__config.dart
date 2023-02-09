part of admin.ui.pages.admin.debate.pros.update;

class AdminDebateProsUpdateConfig {
  AdminDebateProsUpdateAdminProConsTableConfig consTableConfig = AdminDebateProsUpdateAdminProConsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminDebateProsUpdateAdminProProsTableConfig prosTableConfig = AdminDebateProsUpdateAdminProProsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'title',
    sortAsc: true,
  );
  AdminDebateProsUpdateAdminProCommentsTableConfig commentsTableConfig = AdminDebateProsUpdateAdminProCommentsTableConfig(
    shownRowActions: 1,
    sortColumnIndex: 0,
    sortColumnName: 'created',
    sortAsc: true,
  );
  AdminDebateProsUpdateAdminProCreatedByTableConfig createdByTableConfig = AdminDebateProsUpdateAdminProCreatedByTableConfig(
    sortColumnIndex: 0,
    sortColumnName: 'representation',
    sortAsc: true,
  );

  AdminDebateProsUpdatePostTitleChanged postTitleChanged;
  AdminDebateProsUpdatePostCreatedChanged postCreatedChanged;
  AdminDebateProsUpdatePostDescriptionChanged postDescriptionChanged;
  AdminDebateProsUpdatePageBackAction backAction;
  AdminDebateProsUpdatePageExtendActions extendActions;
  AdminDebateProsUpdatePageTitleGenerator titleGenerator;
}
