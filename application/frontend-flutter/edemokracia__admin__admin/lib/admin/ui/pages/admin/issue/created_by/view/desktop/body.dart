//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: desktop

part of admin.ui.pages.admin.issue.created_by.view;

Widget getAdminIssueCreatedByViewDesktopPage(BuildContext context, AdminUserStore targetStore, AdminIssueStore ownerStore,
    AdminIssueCreatedByViewPageStore pageStore, AdminIssueCreatedByViewConfig pageConfig) {
  final navigation = locator<NavigationState>();
  final tabService = locator<TabService>();
  final messageHandler = locator<MessageHandler>();

  return Scrollbar(
    isAlwaysShown: true,
    child: CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: FocusTraversalGroup(
          policy: OrderedTraversalPolicy(),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            JudoColumn(
              col: 12.0,
              row: 19.428571428571427,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 12.0,
                  row: 19.428571428571427,
                  children: [
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 12.0,
                      row: 2.0,
                      card: true,
                      frameMargin: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
                      children: [
                        JudoLabel(
                          col: 12.0,
                          label: AppLocalizations.of(context).lookUpValue(context, 'Security'),
                          icon: Icon(getIconByString('security')),
                          iconMargin: 4.0,
                        ),
                        JudoRow(
                          mainAxisAlignment: MainAxisAlignment.start,
                          col: 12.0,
                          row: 1.0,
                          children: [
                            Observer(
                                builder: (_) => JudoInputText(
                                      key: UniqueKey(),
                                      order: 1,
                                      col: 4.0,
                                      maxLength: 255 ?? 250,
                                      readOnly: true,
                                      label: AppLocalizations.of(context).lookUpValue(context, 'Username'),
                                      icon: Icon(getIconByString('text_fields')),
                                      inCard: true,
                                      initialValue: targetStore.userName,
                                    )),
                            Observer(
                              builder: (_) => JudoSwitch(
                                col: 4.0,
                                order: 2,
                                label: AppLocalizations.of(context).lookUpValue(context, 'Has admin access'),
                                icon: Icon(getIconByString('check_box')),
                                initialValue: targetStore.isAdmin,
                                readOnly: true,
                              ),
                            ),
                            Observer(
                              builder: (_) => JudoDateTimeInput(
                                key: UniqueKey(),
                                order: 3,
                                col: 4.0,
                                readOnly: true,
                                use24HourFormat: true,
                                initialDate: targetStore.created,
                                label: AppLocalizations.of(context).lookUpValue(context, 'Created'),
                                icon: Icon(getIconByString('schedule')),
                                inCard: true,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 12.0,
                      row: 4.0,
                      card: true,
                      frameMargin: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
                      children: [
                        JudoLabel(
                          col: 12.0,
                          label: AppLocalizations.of(context).lookUpValue(context, 'Personal'),
                          icon: Icon(getIconByString('card-account-details')),
                          iconMargin: 4.0,
                        ),
                        JudoRow(
                          mainAxisAlignment: MainAxisAlignment.start,
                          col: 12.0,
                          row: 3.0,
                          children: [
                            JudoColumn(
                              mainAxisAlignment: MainAxisAlignment.center,
                              col: 12.0,
                              row: 3.0,
                              children: [
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 12.0,
                                  row: 1.0,
                                  children: [
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 12.0,
                                      row: 1.0,
                                      children: [
                                        Observer(
                                            builder: (_) => JudoInputText(
                                                  key: UniqueKey(),
                                                  order: 4,
                                                  col: 4.0,
                                                  maxLength: 255 ?? 250,
                                                  readOnly: true,
                                                  label: AppLocalizations.of(context).lookUpValue(context, 'First name'),
                                                  icon: Icon(getIconByString('text_fields')),
                                                  inCard: true,
                                                  initialValue: targetStore.firstName,
                                                )),
                                        Observer(
                                            builder: (_) => JudoInputText(
                                                  key: UniqueKey(),
                                                  order: 5,
                                                  col: 4.0,
                                                  maxLength: 255 ?? 250,
                                                  readOnly: true,
                                                  label: AppLocalizations.of(context).lookUpValue(context, 'Last name'),
                                                  icon: Icon(getIconByString('text_fields')),
                                                  inCard: true,
                                                  initialValue: targetStore.lastName,
                                                )),
                                        JudoSpacer(
                                          col: 4.0,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 12.0,
                                  row: 1.0,
                                  children: [
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 12.0,
                                      row: 1.0,
                                      children: [
                                        Observer(
                                            builder: (_) => JudoInputText(
                                                  key: UniqueKey(),
                                                  order: 6,
                                                  col: 4.0,
                                                  maxLength: 255 ?? 250,
                                                  readOnly: true,
                                                  label: AppLocalizations.of(context).lookUpValue(context, 'Email'),
                                                  icon: Icon(getIconByString('email')),
                                                  inCard: true,
                                                  initialValue: targetStore.email,
                                                )),
                                        Observer(
                                            builder: (_) => JudoInputText(
                                                  key: UniqueKey(),
                                                  order: 7,
                                                  col: 4.0,
                                                  maxLength: 20 ?? 250,
                                                  readOnly: true,
                                                  label: AppLocalizations.of(context).lookUpValue(context, 'Phone'),
                                                  icon: Icon(getIconByString('phone')),
                                                  inCard: true,
                                                  initialValue: targetStore.phone,
                                                )),
                                        JudoSpacer(
                                          col: 4.0,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 12.0,
                                  row: 1.0,
                                  children: [
                                    Observer(
                                        builder: (_) => JudoButton(
                                              col: 12.0,
                                              label: AppLocalizations.of(context).lookUpValue(context, 'Votes'),
                                              icon: Icon(getIconByString('table_rows')),
                                              order: 8,
                                              disabled: pageStore.pageState.disabledByLoading || false,
                                              onPressed: () async {
                                                await navigation.open(Routes.adminUserVotesTablePage,
                                                    arguments: AdminUserVotesTablePageArguments(ownerStore: targetStore));
                                              },
                                            )),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 12.0,
                      row: 13.0,
                      card: true,
                      frameMargin: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
                      children: [
                        JudoLabel(
                          col: 12.0,
                          label: AppLocalizations.of(context).lookUpValue(context, 'Areas'),
                          icon: Icon(getIconByString('map')),
                          iconMargin: 4.0,
                        ),
                        JudoRow(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          col: 12.0,
                          row: 12.0,
                          children: [
                            JudoColumn(
                              mainAxisAlignment: MainAxisAlignment.center,
                              col: 12.0,
                              row: 12.0,
                              children: [
                                JudoRow(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  col: 12.0,
                                  row: 1.0,
                                  children: [
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 12.0,
                                      row: 1.0,
                                      children: [
                                        // AGGREGATION LINK

                                        Observer(builder: (_) {
                                          return JudoLink(
                                            order: 9,
                                            label: AppLocalizations.of(context).lookUpValue(context, 'Resident county'),
                                            icon: Icon(getIconByString('map')),
                                            inCard: true,
                                            readOnly: true,
                                            col: 4.0,
                                            labelList: [
                                              targetStore.residentCounty?.representation?.toString(),
                                            ],
                                            actions: [
                                              targetStore.residentCounty != null
                                                  ? IconButton(
                                                      icon: Icon(
                                                        Icons.visibility,
                                                      ),
                                                      onPressed: pageStore.pageState.disabledByLoading
                                                          ? null
                                                          : () async {
                                                              var response = await navigation.open(Routes.adminUserResidentCountyViewPage,
                                                                  arguments: AdminUserResidentCountyViewPageArguments(
                                                                      ownerStore: targetStore, targetStore: targetStore.residentCounty));
                                                              try {
                                                                await pageStore.refreshUser(targetStore);
                                                              } catch (error) {
                                                                messageHandler.handleApiException(context, error, 'View');
                                                              }
                                                            })
                                                  : null,
                                              (targetStore.residentCounty != null && targetStore.residentCounty.internal__updatable)
                                                  ? IconButton(
                                                      icon: Icon(
                                                        Icons.edit,
                                                      ),
                                                      onPressed: pageStore.pageState.disabledByLoading
                                                          ? null
                                                          : () async {
                                                              pageStore.pageState.disabledByLoading = true;
                                                              AdminCountyStore cloned = AdminCountyStore.clone(targetStore.residentCounty);
                                                              var res = await navigation.open(Routes.adminUserResidentCountyUpdatePage,
                                                                  arguments: AdminUserResidentCountyUpdatePageArguments(targetStore: cloned));
                                                              if (res != null) {
                                                                try {
                                                                  await pageStore.updateResidentCountyCounty(cloned, targetStore);
                                                                } catch (error) {
                                                                  messageHandler.handleApiException(context, error, 'Edit');
                                                                }
                                                              }
                                                              pageStore.pageState.disabledByLoading = false;
                                                            })
                                                  : null,
                                            ],
                                          );
                                        }),

                                        // AGGREGATION LINK

                                        Observer(builder: (_) {
                                          return JudoLink(
                                            order: 10,
                                            label: AppLocalizations.of(context).lookUpValue(context, 'Resident city'),
                                            icon: Icon(getIconByString('city')),
                                            inCard: true,
                                            readOnly: true,
                                            col: 4.0,
                                            labelList: [
                                              targetStore.residentCity?.representation?.toString(),
                                            ],
                                            actions: [
                                              targetStore.residentCity != null
                                                  ? IconButton(
                                                      icon: Icon(
                                                        Icons.visibility,
                                                      ),
                                                      onPressed: pageStore.pageState.disabledByLoading
                                                          ? null
                                                          : () async {
                                                              var response = await navigation.open(Routes.adminUserResidentCityViewPage,
                                                                  arguments: AdminUserResidentCityViewPageArguments(
                                                                      ownerStore: targetStore, targetStore: targetStore.residentCity));
                                                              try {
                                                                await pageStore.refreshUser(targetStore);
                                                              } catch (error) {
                                                                messageHandler.handleApiException(context, error, 'View');
                                                              }
                                                            })
                                                  : null,
                                              (targetStore.residentCity != null && targetStore.residentCity.internal__updatable)
                                                  ? IconButton(
                                                      icon: Icon(
                                                        Icons.edit,
                                                      ),
                                                      onPressed: pageStore.pageState.disabledByLoading
                                                          ? null
                                                          : () async {
                                                              pageStore.pageState.disabledByLoading = true;
                                                              AdminCityStore cloned = AdminCityStore.clone(targetStore.residentCity);
                                                              var res = await navigation.open(Routes.adminUserResidentCityUpdatePage,
                                                                  arguments: AdminUserResidentCityUpdatePageArguments(targetStore: cloned));
                                                              if (res != null) {
                                                                try {
                                                                  await pageStore.updateResidentCityCity(cloned, targetStore);
                                                                } catch (error) {
                                                                  messageHandler.handleApiException(context, error, 'Edit');
                                                                }
                                                              }
                                                              pageStore.pageState.disabledByLoading = false;
                                                            })
                                                  : null,
                                            ],
                                          );
                                        }),

                                        // AGGREGATION LINK

                                        Observer(builder: (_) {
                                          return JudoLink(
                                            order: 11,
                                            label: AppLocalizations.of(context).lookUpValue(context, 'Resident district'),
                                            icon: Icon(getIconByString('home-city')),
                                            inCard: true,
                                            readOnly: true,
                                            col: 4.0,
                                            labelList: [
                                              targetStore.residentDistrict?.representation?.toString(),
                                            ],
                                            actions: [
                                              targetStore.residentDistrict != null
                                                  ? IconButton(
                                                      icon: Icon(
                                                        Icons.visibility,
                                                      ),
                                                      onPressed: pageStore.pageState.disabledByLoading
                                                          ? null
                                                          : () async {
                                                              var response = await navigation.open(Routes.adminUserResidentDistrictViewPage,
                                                                  arguments: AdminUserResidentDistrictViewPageArguments(
                                                                      ownerStore: targetStore, targetStore: targetStore.residentDistrict));
                                                              try {
                                                                await pageStore.refreshUser(targetStore);
                                                              } catch (error) {
                                                                messageHandler.handleApiException(context, error, 'View');
                                                              }
                                                            })
                                                  : null,
                                              (targetStore.residentDistrict != null && targetStore.residentDistrict.internal__updatable)
                                                  ? IconButton(
                                                      icon: Icon(
                                                        Icons.edit,
                                                      ),
                                                      onPressed: pageStore.pageState.disabledByLoading
                                                          ? null
                                                          : () async {
                                                              pageStore.pageState.disabledByLoading = true;
                                                              AdminDistrictStore cloned = AdminDistrictStore.clone(targetStore.residentDistrict);
                                                              var res = await navigation.open(Routes.adminUserResidentDistrictUpdatePage,
                                                                  arguments: AdminUserResidentDistrictUpdatePageArguments(targetStore: cloned));
                                                              if (res != null) {
                                                                try {
                                                                  await pageStore.updateResidentDistrictDistrict(cloned, targetStore);
                                                                } catch (error) {
                                                                  messageHandler.handleApiException(context, error, 'Edit');
                                                                }
                                                              }
                                                              pageStore.pageState.disabledByLoading = false;
                                                            })
                                                  : null,
                                            ],
                                          );
                                        }),
                                      ],
                                    ),
                                  ],
                                ),
                                JudoRow(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  col: 12.0,
                                  row: 11.0,
                                  children: [
                                    Observer(
                                      builder: (_) => JudoTab(
                                          col: 12.0,
                                          row: 11.0,
                                          order: 12,
                                          tabIndex: tabService
                                              .getOrCreateTabStore('edemokracia::admin::Admin::edemokracia::admin::Issue::createdBy_activity')
                                              .tabIndex,
                                          setTabIndex: tabService
                                              .getOrCreateTabStore('edemokracia::admin::Admin::edemokracia::admin::Issue::createdBy_activity')
                                              .setTabIndex,
                                          tabContent: [
                                            JudoRow(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              col: 12.0,
                                              row: 10.0,
                                              children: [
                                                JudoColumn(
                                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                                  col: 12.0,
                                                  row: 3.0,
                                                  children: [
                                                    // AGGREGATION TABLE

                                                    Observer(builder: (_) {
                                                      var dataInfo = EdemokraciaAdminIssueCreatedByViewActivityCountiesDesktopTable(
                                                          context, pageStore, pageConfig,
                                                          disabled: false);
                                                      return JudoTable(
                                                        key: UniqueKey(),
                                                        order: 13,
                                                        disabled: pageStore.pageState.disabledByLoading,
                                                        col: 12.0,
                                                        row: 3.0 - 1,
                                                        dataInfo: dataInfo,
                                                        rowList: pageStore.activityCountiesTablePagingList,
                                                        sortAscending: pageStore.activityCountiesSortAsc,
                                                        sortColumnIndex: pageStore.activityCountiesSortColumnIndex,
                                                        sortInitially: true,
                                                        onSort: (int columnIndex, bool asc) {
                                                          pageStore.activityCountiesSetSort(context, dataInfo.getColumnFieldByIndex(columnIndex), columnIndex,
                                                              asc, TableUtility.getSortComparator(columnIndex, asc, dataInfo), targetStore);
                                                        },
                                                        navigateToViewPageAction: pageConfig.activityCountiesTableConfig.rowClickNavigate
                                                            ? (element) async {
                                                                if (element != null) {
                                                                  await navigation.open(Routes.adminUserActivityCountiesViewPage,
                                                                      arguments: AdminUserActivityCountiesViewPageArguments(
                                                                          ownerStore: targetStore, targetStore: element));
                                                                  try {
                                                                    await pageStore.refreshUser(targetStore);
                                                                  } catch (error) {
                                                                    messageHandler.handleApiException(context, error, 'View');
                                                                  }
                                                                }
                                                              }
                                                            : null,
                                                        rowActionList: [
                                                          TableRowAction(
                                                            disabled: (element) =>
                                                                pageStore.pageState.disabledByLoading || !element?.internal__updatable ?? true,
                                                            label: AppLocalizations.of(context).lookUpValue(context, 'Edit'),
                                                            icon: Icon(getIconByString('edit')),
                                                            action: (element) async {
                                                              pageStore.pageState.disabledByLoading = true;
                                                              AdminCountyStore cloned = AdminCountyStore.clone(element);
                                                              var res = await navigation.open(Routes.adminUserActivityCountiesUpdatePage,
                                                                  arguments: AdminUserActivityCountiesUpdatePageArguments(targetStore: cloned));
                                                              if (res != null) {
                                                                try {
                                                                  await pageStore.updateActivityCountiesCounty(cloned, targetStore);
                                                                } catch (error) {
                                                                  messageHandler.handleApiException(context, error, 'Edit');
                                                                }
                                                              }
                                                              pageStore.pageState.disabledByLoading = false;
                                                            },
                                                          ),
                                                        ],
                                                      );
                                                    }),
                                                    Padding(
                                                      padding: JudoComponentCustomizer.get().getNavigationButtonBarPadding(),
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding: JudoComponentCustomizer.get().getDefaultPadding(),
                                                            child: Observer(
                                                              builder: (_) => Text(
                                                                pageStore.activityCountiesTableItemsRangeEnd != 0
                                                                    ? '${pageStore.activityCountiesTableItemsRangeStart} - ${pageStore.activityCountiesTableItemsRangeEnd}'
                                                                    : AppLocalizations.of(context).lookUpValue(context, 'No results'),
                                                                style: JudoComponentCustomizer.get().getRowCounterTextStyle(Theme.of(context)),
                                                              ),
                                                            ),
                                                          ),
                                                          Observer(
                                                            builder: (_) => Padding(
                                                              padding: JudoComponentCustomizer.get().getDefaultPadding(),
                                                              child: ElevatedButton(
                                                                onPressed: pageStore.activityCountiesTablePreviousEnable
                                                                    ? () async {
                                                                        pageStore.activityCountiesTablePreviousPage();
                                                                      }
                                                                    : null,
                                                                child: Text(AppLocalizations.of(context).lookUpValue(context, 'Previous')),
                                                              ),
                                                            ),
                                                          ),
                                                          Observer(
                                                            builder: (_) => Padding(
                                                              padding: JudoComponentCustomizer.get().getDefaultPadding(),
                                                              child: ElevatedButton(
                                                                onPressed: pageStore.activityCountiesTableNextEnable
                                                                    ? () async {
                                                                        pageStore.activityCountiesTableNextPage();
                                                                      }
                                                                    : null,
                                                                child: Text(AppLocalizations.of(context).lookUpValue(context, 'Next')),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            JudoRow(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              col: 12.0,
                                              row: 10.0,
                                              children: [
                                                JudoColumn(
                                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                                  col: 12.0,
                                                  row: 3.0,
                                                  children: [
                                                    // AGGREGATION TABLE

                                                    Observer(builder: (_) {
                                                      var dataInfo = EdemokraciaAdminIssueCreatedByViewActivityCitiesDesktopTable(
                                                          context, pageStore, pageConfig,
                                                          disabled: false);
                                                      return JudoTable(
                                                        key: UniqueKey(),
                                                        order: 14,
                                                        disabled: pageStore.pageState.disabledByLoading,
                                                        col: 12.0,
                                                        row: 3.0 - 1,
                                                        dataInfo: dataInfo,
                                                        rowList: pageStore.activityCitiesTablePagingList,
                                                        sortAscending: pageStore.activityCitiesSortAsc,
                                                        sortColumnIndex: pageStore.activityCitiesSortColumnIndex,
                                                        sortInitially: true,
                                                        onSort: (int columnIndex, bool asc) {
                                                          pageStore.activityCitiesSetSort(context, dataInfo.getColumnFieldByIndex(columnIndex), columnIndex,
                                                              asc, TableUtility.getSortComparator(columnIndex, asc, dataInfo), targetStore);
                                                        },
                                                        navigateToViewPageAction: pageConfig.activityCitiesTableConfig.rowClickNavigate
                                                            ? (element) async {
                                                                if (element != null) {
                                                                  await navigation.open(Routes.adminUserActivityCitiesViewPage,
                                                                      arguments: AdminUserActivityCitiesViewPageArguments(
                                                                          ownerStore: targetStore, targetStore: element));
                                                                  try {
                                                                    await pageStore.refreshUser(targetStore);
                                                                  } catch (error) {
                                                                    messageHandler.handleApiException(context, error, 'View');
                                                                  }
                                                                }
                                                              }
                                                            : null,
                                                        rowActionList: [
                                                          TableRowAction(
                                                            disabled: (element) =>
                                                                pageStore.pageState.disabledByLoading || !element?.internal__updatable ?? true,
                                                            label: AppLocalizations.of(context).lookUpValue(context, 'Edit'),
                                                            icon: Icon(getIconByString('edit')),
                                                            action: (element) async {
                                                              pageStore.pageState.disabledByLoading = true;
                                                              AdminCityStore cloned = AdminCityStore.clone(element);
                                                              var res = await navigation.open(Routes.adminUserActivityCitiesUpdatePage,
                                                                  arguments: AdminUserActivityCitiesUpdatePageArguments(targetStore: cloned));
                                                              if (res != null) {
                                                                try {
                                                                  await pageStore.updateActivityCitiesCity(cloned, targetStore);
                                                                } catch (error) {
                                                                  messageHandler.handleApiException(context, error, 'Edit');
                                                                }
                                                              }
                                                              pageStore.pageState.disabledByLoading = false;
                                                            },
                                                          ),
                                                        ],
                                                      );
                                                    }),
                                                    Padding(
                                                      padding: JudoComponentCustomizer.get().getNavigationButtonBarPadding(),
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding: JudoComponentCustomizer.get().getDefaultPadding(),
                                                            child: Observer(
                                                              builder: (_) => Text(
                                                                pageStore.activityCitiesTableItemsRangeEnd != 0
                                                                    ? '${pageStore.activityCitiesTableItemsRangeStart} - ${pageStore.activityCitiesTableItemsRangeEnd}'
                                                                    : AppLocalizations.of(context).lookUpValue(context, 'No results'),
                                                                style: JudoComponentCustomizer.get().getRowCounterTextStyle(Theme.of(context)),
                                                              ),
                                                            ),
                                                          ),
                                                          Observer(
                                                            builder: (_) => Padding(
                                                              padding: JudoComponentCustomizer.get().getDefaultPadding(),
                                                              child: ElevatedButton(
                                                                onPressed: pageStore.activityCitiesTablePreviousEnable
                                                                    ? () async {
                                                                        pageStore.activityCitiesTablePreviousPage();
                                                                      }
                                                                    : null,
                                                                child: Text(AppLocalizations.of(context).lookUpValue(context, 'Previous')),
                                                              ),
                                                            ),
                                                          ),
                                                          Observer(
                                                            builder: (_) => Padding(
                                                              padding: JudoComponentCustomizer.get().getDefaultPadding(),
                                                              child: ElevatedButton(
                                                                onPressed: pageStore.activityCitiesTableNextEnable
                                                                    ? () async {
                                                                        pageStore.activityCitiesTableNextPage();
                                                                      }
                                                                    : null,
                                                                child: Text(AppLocalizations.of(context).lookUpValue(context, 'Next')),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            JudoRow(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              col: 12.0,
                                              row: 10.0,
                                              children: [
                                                JudoColumn(
                                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                                  col: 12.0,
                                                  row: 3.0,
                                                  children: [
                                                    // AGGREGATION TABLE

                                                    Observer(builder: (_) {
                                                      var dataInfo = EdemokraciaAdminIssueCreatedByViewActivityDistrictsDesktopTable(
                                                          context, pageStore, pageConfig,
                                                          disabled: false);
                                                      return JudoTable(
                                                        key: UniqueKey(),
                                                        order: 15,
                                                        disabled: pageStore.pageState.disabledByLoading,
                                                        col: 12.0,
                                                        row: 3.0 - 1,
                                                        dataInfo: dataInfo,
                                                        rowList: pageStore.activityDistrictsTablePagingList,
                                                        sortAscending: pageStore.activityDistrictsSortAsc,
                                                        sortColumnIndex: pageStore.activityDistrictsSortColumnIndex,
                                                        sortInitially: true,
                                                        onSort: (int columnIndex, bool asc) {
                                                          pageStore.activityDistrictsSetSort(context, dataInfo.getColumnFieldByIndex(columnIndex), columnIndex,
                                                              asc, TableUtility.getSortComparator(columnIndex, asc, dataInfo), targetStore);
                                                        },
                                                        navigateToViewPageAction: pageConfig.activityDistrictsTableConfig.rowClickNavigate
                                                            ? (element) async {
                                                                if (element != null) {
                                                                  await navigation.open(Routes.adminUserActivityDistrictsViewPage,
                                                                      arguments: AdminUserActivityDistrictsViewPageArguments(
                                                                          ownerStore: targetStore, targetStore: element));
                                                                  try {
                                                                    await pageStore.refreshUser(targetStore);
                                                                  } catch (error) {
                                                                    messageHandler.handleApiException(context, error, 'View');
                                                                  }
                                                                }
                                                              }
                                                            : null,
                                                        rowActionList: [
                                                          TableRowAction(
                                                            disabled: (element) =>
                                                                pageStore.pageState.disabledByLoading || !element?.internal__updatable ?? true,
                                                            label: AppLocalizations.of(context).lookUpValue(context, 'Edit'),
                                                            icon: Icon(getIconByString('edit')),
                                                            action: (element) async {
                                                              pageStore.pageState.disabledByLoading = true;
                                                              AdminDistrictStore cloned = AdminDistrictStore.clone(element);
                                                              var res = await navigation.open(Routes.adminUserActivityDistrictsUpdatePage,
                                                                  arguments: AdminUserActivityDistrictsUpdatePageArguments(targetStore: cloned));
                                                              if (res != null) {
                                                                try {
                                                                  await pageStore.updateActivityDistrictsDistrict(cloned, targetStore);
                                                                } catch (error) {
                                                                  messageHandler.handleApiException(context, error, 'Edit');
                                                                }
                                                              }
                                                              pageStore.pageState.disabledByLoading = false;
                                                            },
                                                          ),
                                                        ],
                                                      );
                                                    }),
                                                    Padding(
                                                      padding: JudoComponentCustomizer.get().getNavigationButtonBarPadding(),
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding: JudoComponentCustomizer.get().getDefaultPadding(),
                                                            child: Observer(
                                                              builder: (_) => Text(
                                                                pageStore.activityDistrictsTableItemsRangeEnd != 0
                                                                    ? '${pageStore.activityDistrictsTableItemsRangeStart} - ${pageStore.activityDistrictsTableItemsRangeEnd}'
                                                                    : AppLocalizations.of(context).lookUpValue(context, 'No results'),
                                                                style: JudoComponentCustomizer.get().getRowCounterTextStyle(Theme.of(context)),
                                                              ),
                                                            ),
                                                          ),
                                                          Observer(
                                                            builder: (_) => Padding(
                                                              padding: JudoComponentCustomizer.get().getDefaultPadding(),
                                                              child: ElevatedButton(
                                                                onPressed: pageStore.activityDistrictsTablePreviousEnable
                                                                    ? () async {
                                                                        pageStore.activityDistrictsTablePreviousPage();
                                                                      }
                                                                    : null,
                                                                child: Text(AppLocalizations.of(context).lookUpValue(context, 'Previous')),
                                                              ),
                                                            ),
                                                          ),
                                                          Observer(
                                                            builder: (_) => Padding(
                                                              padding: JudoComponentCustomizer.get().getDefaultPadding(),
                                                              child: ElevatedButton(
                                                                onPressed: pageStore.activityDistrictsTableNextEnable
                                                                    ? () async {
                                                                        pageStore.activityDistrictsTableNextPage();
                                                                      }
                                                                    : null,
                                                                child: Text(AppLocalizations.of(context).lookUpValue(context, 'Next')),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                          tabs: [
                                            Tab(
                                              icon: Icon(getIconByString('map')),
                                              text: AppLocalizations.of(context).lookUpValue(context, 'Activity counties'),
                                            ),
                                            Tab(
                                              icon: Icon(getIconByString('city')),
                                              text: AppLocalizations.of(context).lookUpValue(context, 'Activity cities'),
                                            ),
                                            Tab(
                                              icon: Icon(getIconByString('home-city')),
                                              text: AppLocalizations.of(context).lookUpValue(context, 'Activity districts'),
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      )
    ]),
  );
}
