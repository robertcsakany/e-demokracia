//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: desktop

part of admin.ui.pages.admin.admin.users.update;

Widget getAdminAdminUsersUpdateDesktopPage(
    BuildContext context, AdminUserStore targetStore, AdminAdminUsersUpdatePageStore pageStore, AdminAdminUsersUpdateConfig pageConfig, Map inputWidgetKeyMap) {
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
                                      key: inputWidgetKeyMap['userName'],
                                      order: 1,
                                      errorMessage: pageStore.validationAttributeErrorMessageMap['userName'].message,
                                      col: 4.0,
                                      maxLength: 255 ?? 250,
                                      label: AppLocalizations.of(context).lookUpValue(context, 'Username'),
                                      icon: Icon(getIconByString('text_fields')),
                                      inCard: true,
                                      initialValue: targetStore.userName,
                                      mandatory: true,
                                      onChanged: (value) {
                                        targetStore.setUserName(value.toString());
                                      },
                                      onBlur: () {
                                        validateMissingRequiredAttribute(
                                            context, pageStore.validationAttributeErrorMessageMap['userName'], targetStore.userName);
                                        if (pageConfig.postUserNameChanged != null) {
                                          pageConfig.postUserNameChanged(targetStore.userName, pageStore: pageStore, targetStore: targetStore);
                                        }
                                      },
                                    )),
                            Observer(
                              builder: (_) => JudoSwitch(
                                col: 4.0,
                                order: 2,
                                errorMessage: pageStore.validationAttributeErrorMessageMap['isAdmin'].message,
                                label: AppLocalizations.of(context).lookUpValue(context, 'Has admin access'),
                                icon: Icon(getIconByString('check_box')),
                                initialValue: targetStore.isAdmin,
                                onChanged: (value) {
                                  targetStore.setIsAdmin(value);
                                  if (pageConfig.postIsAdminChanged != null) {
                                    pageConfig.postIsAdminChanged(targetStore.isAdmin, pageStore: pageStore, targetStore: targetStore);
                                  }
                                },
                              ),
                            ),
                            Observer(
                              builder: (_) => JudoDateTimeInput(
                                key: inputWidgetKeyMap['created'],
                                order: 3,
                                errorMessage: pageStore.validationAttributeErrorMessageMap['created'].message,
                                col: 4.0,
                                use24HourFormat: true,
                                initialDate: targetStore.created,
                                label: AppLocalizations.of(context).lookUpValue(context, 'Created'),
                                icon: Icon(getIconByString('schedule')),
                                inCard: true,
                                onChanged: (value) {
                                  targetStore.setCreated(value);
                                  if (pageConfig.postCreatedChanged != null) {
                                    pageConfig.postCreatedChanged(targetStore.created, pageStore: pageStore, targetStore: targetStore);
                                  }
                                },
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
                                                  key: inputWidgetKeyMap['firstName'],
                                                  order: 4,
                                                  errorMessage: pageStore.validationAttributeErrorMessageMap['firstName'].message,
                                                  col: 4.0,
                                                  maxLength: 255 ?? 250,
                                                  label: AppLocalizations.of(context).lookUpValue(context, 'First name'),
                                                  icon: Icon(getIconByString('text_fields')),
                                                  inCard: true,
                                                  initialValue: targetStore.firstName,
                                                  mandatory: true,
                                                  onChanged: (value) {
                                                    targetStore.setFirstName(value.toString());
                                                  },
                                                  onBlur: () {
                                                    validateMissingRequiredAttribute(
                                                        context, pageStore.validationAttributeErrorMessageMap['firstName'], targetStore.firstName);
                                                    if (pageConfig.postFirstNameChanged != null) {
                                                      pageConfig.postFirstNameChanged(targetStore.firstName, pageStore: pageStore, targetStore: targetStore);
                                                    }
                                                  },
                                                )),
                                        Observer(
                                            builder: (_) => JudoInputText(
                                                  key: inputWidgetKeyMap['lastName'],
                                                  order: 5,
                                                  errorMessage: pageStore.validationAttributeErrorMessageMap['lastName'].message,
                                                  col: 4.0,
                                                  maxLength: 255 ?? 250,
                                                  label: AppLocalizations.of(context).lookUpValue(context, 'Last name'),
                                                  icon: Icon(getIconByString('text_fields')),
                                                  inCard: true,
                                                  initialValue: targetStore.lastName,
                                                  mandatory: true,
                                                  onChanged: (value) {
                                                    targetStore.setLastName(value.toString());
                                                  },
                                                  onBlur: () {
                                                    validateMissingRequiredAttribute(
                                                        context, pageStore.validationAttributeErrorMessageMap['lastName'], targetStore.lastName);
                                                    if (pageConfig.postLastNameChanged != null) {
                                                      pageConfig.postLastNameChanged(targetStore.lastName, pageStore: pageStore, targetStore: targetStore);
                                                    }
                                                  },
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
                                                  key: inputWidgetKeyMap['email'],
                                                  order: 6,
                                                  errorMessage: pageStore.validationAttributeErrorMessageMap['email'].message,
                                                  col: 4.0,
                                                  maxLength: 255 ?? 250,
                                                  label: AppLocalizations.of(context).lookUpValue(context, 'Email'),
                                                  icon: Icon(getIconByString('email')),
                                                  inCard: true,
                                                  initialValue: targetStore.email,
                                                  mandatory: true,
                                                  onChanged: (value) {
                                                    targetStore.setEmail(value.toString());
                                                  },
                                                  onBlur: () {
                                                    validateMissingRequiredAttribute(
                                                        context, pageStore.validationAttributeErrorMessageMap['email'], targetStore.email);

                                                    /// TODO JNG-3519
                                                    /// validateRegexp(context, pageStore.validationAttributeErrorMessageMap['email'], targetStore.email, r'^[_A-Za-z0-9-\+]+(\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\.[A-Za-z0-9-]+)*(\.[A-Za-z]{2,})$');
                                                    if (pageConfig.postEmailChanged != null) {
                                                      pageConfig.postEmailChanged(targetStore.email, pageStore: pageStore, targetStore: targetStore);
                                                    }
                                                  },
                                                )),
                                        Observer(
                                            builder: (_) => JudoInputText(
                                                  key: inputWidgetKeyMap['phone'],
                                                  order: 7,
                                                  errorMessage: pageStore.validationAttributeErrorMessageMap['phone'].message,
                                                  col: 4.0,
                                                  maxLength: 20 ?? 250,
                                                  label: AppLocalizations.of(context).lookUpValue(context, 'Phone'),
                                                  icon: Icon(getIconByString('phone')),
                                                  inCard: true,
                                                  initialValue: targetStore.phone,
                                                  onChanged: (value) {
                                                    targetStore.setPhone(value.toString());
                                                  },
                                                  onBlur: () {
                                                    if (pageConfig.postPhoneChanged != null) {
                                                      pageConfig.postPhoneChanged(targetStore.phone, pageStore: pageStore, targetStore: targetStore);
                                                    }
                                                  },
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
                                              disabled: pageStore.pageState.disabledByLoading || true,
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
                                            errorMessage: pageStore.validationAttributeErrorMessageMap['residentCounty'].message,
                                            order: 9,
                                            label: AppLocalizations.of(context).lookUpValue(context, 'Resident county'),
                                            icon: Icon(getIconByString('map')),
                                            inCard: true,
                                            col: 4.0,
                                            labelList: [
                                              targetStore.residentCounty?.representation?.toString(),
                                            ],
                                            setAction: targetStore.internal__updatable
                                                ? () async {
                                                    var selected = await judoSelectAdminAdminUsersUpdateResidentCountyDialog(
                                                      context: context,
                                                      ownerStore: targetStore,
                                                      pageStore: pageStore,
                                                      pageConfig: pageConfig,
                                                    );

                                                    if (selected != null) {
                                                      try {
                                                        // it's not a real future call, await not necessary
                                                        pageStore.setResidentCounty(targetStore, selected);
                                                      } catch (error) {
                                                        messageHandler.handleApiException(context, error, 'Select');
                                                      }
                                                    }
                                                  }
                                                : null,
                                            actions: [
                                              (targetStore.internal__updatable && targetStore.residentCounty != null)
                                                  ? IconButton(
                                                      icon: Icon(
                                                        Icons.link_off,
                                                      ),
                                                      onPressed: pageStore.pageState.disabledByLoading
                                                          ? null
                                                          : () async {
                                                              try {
                                                                // it's not a real future call, await not necessary
                                                                pageStore.unsetResidentCounty(targetStore);
                                                              } catch (error) {
                                                                messageHandler.handleApiException(context, error, 'Unselect');
                                                              }
                                                            },
                                                    )
                                                  : null,
                                            ],
                                          );
                                        }),

                                        // AGGREGATION LINK

                                        Observer(builder: (_) {
                                          return JudoLink(
                                            errorMessage: pageStore.validationAttributeErrorMessageMap['residentCity'].message,
                                            order: 10,
                                            label: AppLocalizations.of(context).lookUpValue(context, 'Resident city'),
                                            icon: Icon(getIconByString('city')),
                                            inCard: true,
                                            col: 4.0,
                                            labelList: [
                                              targetStore.residentCity?.representation?.toString(),
                                            ],
                                            setAction: targetStore.internal__updatable
                                                ? () async {
                                                    var selected = await judoSelectAdminAdminUsersUpdateResidentCityDialog(
                                                      context: context,
                                                      ownerStore: targetStore,
                                                      pageStore: pageStore,
                                                      pageConfig: pageConfig,
                                                    );

                                                    if (selected != null) {
                                                      try {
                                                        // it's not a real future call, await not necessary
                                                        pageStore.setResidentCity(targetStore, selected);
                                                      } catch (error) {
                                                        messageHandler.handleApiException(context, error, 'Select');
                                                      }
                                                    }
                                                  }
                                                : null,
                                            actions: [
                                              (targetStore.internal__updatable && targetStore.residentCity != null)
                                                  ? IconButton(
                                                      icon: Icon(
                                                        Icons.link_off,
                                                      ),
                                                      onPressed: pageStore.pageState.disabledByLoading
                                                          ? null
                                                          : () async {
                                                              try {
                                                                // it's not a real future call, await not necessary
                                                                pageStore.unsetResidentCity(targetStore);
                                                              } catch (error) {
                                                                messageHandler.handleApiException(context, error, 'Unselect');
                                                              }
                                                            },
                                                    )
                                                  : null,
                                            ],
                                          );
                                        }),

                                        // AGGREGATION LINK

                                        Observer(builder: (_) {
                                          return JudoLink(
                                            errorMessage: pageStore.validationAttributeErrorMessageMap['residentDistrict'].message,
                                            order: 11,
                                            label: AppLocalizations.of(context).lookUpValue(context, 'Resident district'),
                                            icon: Icon(getIconByString('home-city')),
                                            inCard: true,
                                            col: 4.0,
                                            labelList: [
                                              targetStore.residentDistrict?.representation?.toString(),
                                            ],
                                            setAction: targetStore.internal__updatable
                                                ? () async {
                                                    var selected = await judoSelectAdminAdminUsersUpdateResidentDistrictDialog(
                                                      context: context,
                                                      ownerStore: targetStore,
                                                      pageStore: pageStore,
                                                      pageConfig: pageConfig,
                                                    );

                                                    if (selected != null) {
                                                      try {
                                                        // it's not a real future call, await not necessary
                                                        pageStore.setResidentDistrict(targetStore, selected);
                                                      } catch (error) {
                                                        messageHandler.handleApiException(context, error, 'Select');
                                                      }
                                                    }
                                                  }
                                                : null,
                                            actions: [
                                              (targetStore.internal__updatable && targetStore.residentDistrict != null)
                                                  ? IconButton(
                                                      icon: Icon(
                                                        Icons.link_off,
                                                      ),
                                                      onPressed: pageStore.pageState.disabledByLoading
                                                          ? null
                                                          : () async {
                                                              try {
                                                                // it's not a real future call, await not necessary
                                                                pageStore.unsetResidentDistrict(targetStore);
                                                              } catch (error) {
                                                                messageHandler.handleApiException(context, error, 'Unselect');
                                                              }
                                                            },
                                                    )
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
                                          tabIndex:
                                              tabService.getOrCreateTabStore('edemokracia::admin::Admin::edemokracia::admin::Admin::users_activity').tabIndex,
                                          setTabIndex: tabService
                                              .getOrCreateTabStore('edemokracia::admin::Admin::edemokracia::admin::Admin::users_activity')
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
                                                      var dataInfo = EdemokraciaAdminAdminUsersEditActivityCountiesDesktopTable(context, pageStore, pageConfig,
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
                                                        tableActions: {
                                                          0: JudoMenuItemData(
                                                              value: 0,
                                                              label: AppLocalizations.of(context).lookUpValue(context, 'Clear'),
                                                              icon: Icon(getIconByString('link_off')),
                                                              disabled: pageStore.pageState.disabledByLoading,
                                                              onSelected: () async {
                                                                showDialog(
                                                                    context: context,
                                                                    builder: (_) => new AlertDialog(
                                                                          title: new Text(
                                                                            AppLocalizations.of(context).lookUpValue(context, 'Clear'),
                                                                          ),
                                                                          content: new Text(
                                                                            AppLocalizations.of(context).lookUpValue(
                                                                                context, 'Are you sure you would like to clear all elements in the list?'),
                                                                          ),
                                                                          actions: <Widget>[
                                                                            new TextButton(
                                                                              onPressed: () {
                                                                                Navigator.of(context).pop();
                                                                              },
                                                                              child: new Text(
                                                                                AppLocalizations.of(context).lookUpValue(context, 'No'),
                                                                              ),
                                                                            ),
                                                                            new ElevatedButton(
                                                                              onPressed: () async {
                                                                                try {
                                                                                  // it's not a real future call, await not necessary
                                                                                  pageStore.setActivityCounties(targetStore, []);
                                                                                } catch (error) {
                                                                                  messageHandler.handleApiException(context, error, 'Clear');
                                                                                }
                                                                                Navigator.of(context).pop();
                                                                              },
                                                                              child: new Text(
                                                                                AppLocalizations.of(context).lookUpValue(context, 'Yes'),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ));
                                                              }),
                                                          1: JudoMenuItemData(
                                                              value: 1,
                                                              label: AppLocalizations.of(context).lookUpValue(context, 'Add'),
                                                              icon: Icon(getIconByString('add_link')),
                                                              disabled: pageStore.pageState.disabledByLoading || !targetStore.internal__updatable,
                                                              onSelected: () async {
                                                                var selected = await judoSelectAdminAdminUsersUpdateActivityCountiesDialog(
                                                                  context: context,
                                                                  ownerStore: targetStore,
                                                                  pageStore: pageStore,
                                                                  pageConfig: pageConfig,
                                                                  dialogTypeAdder: true,
                                                                );

                                                                if (selected != null) {
                                                                  try {
                                                                    // it's not a real future call, await not necessary
                                                                    pageStore.addActivityCounties(targetStore, selected);
                                                                  } catch (error) {
                                                                    messageHandler.handleApiException(context, error, 'Add');
                                                                  }
                                                                }
                                                              }),
                                                        },
                                                        rowActionList: [
                                                          TableRowAction(
                                                            disabled: (element) =>
                                                                pageStore.pageState.disabledByLoading || !targetStore?.internal__updatable ?? true,
                                                            label: AppLocalizations.of(context).lookUpValue(context, 'Remove'),
                                                            icon: Icon(getIconByString('link_off')),
                                                            action: (element) {
                                                              try {
                                                                // it's not a real future call, await not necessary
                                                                pageStore.removeActivityCounties(targetStore, element);
                                                              } catch (error) {
                                                                messageHandler.handleApiException(context, error, 'Remove');
                                                              }
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
                                                      var dataInfo = EdemokraciaAdminAdminUsersEditActivityCitiesDesktopTable(context, pageStore, pageConfig,
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
                                                        tableActions: {
                                                          0: JudoMenuItemData(
                                                              value: 0,
                                                              label: AppLocalizations.of(context).lookUpValue(context, 'Clear'),
                                                              icon: Icon(getIconByString('link_off')),
                                                              disabled: pageStore.pageState.disabledByLoading,
                                                              onSelected: () async {
                                                                showDialog(
                                                                    context: context,
                                                                    builder: (_) => new AlertDialog(
                                                                          title: new Text(
                                                                            AppLocalizations.of(context).lookUpValue(context, 'Clear'),
                                                                          ),
                                                                          content: new Text(
                                                                            AppLocalizations.of(context).lookUpValue(
                                                                                context, 'Are you sure you would like to clear all elements in the list?'),
                                                                          ),
                                                                          actions: <Widget>[
                                                                            new TextButton(
                                                                              onPressed: () {
                                                                                Navigator.of(context).pop();
                                                                              },
                                                                              child: new Text(
                                                                                AppLocalizations.of(context).lookUpValue(context, 'No'),
                                                                              ),
                                                                            ),
                                                                            new ElevatedButton(
                                                                              onPressed: () async {
                                                                                try {
                                                                                  // it's not a real future call, await not necessary
                                                                                  pageStore.setActivityCities(targetStore, []);
                                                                                } catch (error) {
                                                                                  messageHandler.handleApiException(context, error, 'Clear');
                                                                                }
                                                                                Navigator.of(context).pop();
                                                                              },
                                                                              child: new Text(
                                                                                AppLocalizations.of(context).lookUpValue(context, 'Yes'),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ));
                                                              }),
                                                          1: JudoMenuItemData(
                                                              value: 1,
                                                              label: AppLocalizations.of(context).lookUpValue(context, 'Add'),
                                                              icon: Icon(getIconByString('add_link')),
                                                              disabled: pageStore.pageState.disabledByLoading || !targetStore.internal__updatable,
                                                              onSelected: () async {
                                                                var selected = await judoSelectAdminAdminUsersUpdateActivityCitiesDialog(
                                                                  context: context,
                                                                  ownerStore: targetStore,
                                                                  pageStore: pageStore,
                                                                  pageConfig: pageConfig,
                                                                  dialogTypeAdder: true,
                                                                );

                                                                if (selected != null) {
                                                                  try {
                                                                    // it's not a real future call, await not necessary
                                                                    pageStore.addActivityCities(targetStore, selected);
                                                                  } catch (error) {
                                                                    messageHandler.handleApiException(context, error, 'Add');
                                                                  }
                                                                }
                                                              }),
                                                        },
                                                        rowActionList: [
                                                          TableRowAction(
                                                            disabled: (element) =>
                                                                pageStore.pageState.disabledByLoading || !targetStore?.internal__updatable ?? true,
                                                            label: AppLocalizations.of(context).lookUpValue(context, 'Remove'),
                                                            icon: Icon(getIconByString('link_off')),
                                                            action: (element) {
                                                              try {
                                                                // it's not a real future call, await not necessary
                                                                pageStore.removeActivityCities(targetStore, element);
                                                              } catch (error) {
                                                                messageHandler.handleApiException(context, error, 'Remove');
                                                              }
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
                                                      var dataInfo = EdemokraciaAdminAdminUsersEditActivityDistrictsDesktopTable(context, pageStore, pageConfig,
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
                                                        tableActions: {
                                                          0: JudoMenuItemData(
                                                              value: 0,
                                                              label: AppLocalizations.of(context).lookUpValue(context, 'Clear'),
                                                              icon: Icon(getIconByString('link_off')),
                                                              disabled: pageStore.pageState.disabledByLoading,
                                                              onSelected: () async {
                                                                showDialog(
                                                                    context: context,
                                                                    builder: (_) => new AlertDialog(
                                                                          title: new Text(
                                                                            AppLocalizations.of(context).lookUpValue(context, 'Clear'),
                                                                          ),
                                                                          content: new Text(
                                                                            AppLocalizations.of(context).lookUpValue(
                                                                                context, 'Are you sure you would like to clear all elements in the list?'),
                                                                          ),
                                                                          actions: <Widget>[
                                                                            new TextButton(
                                                                              onPressed: () {
                                                                                Navigator.of(context).pop();
                                                                              },
                                                                              child: new Text(
                                                                                AppLocalizations.of(context).lookUpValue(context, 'No'),
                                                                              ),
                                                                            ),
                                                                            new ElevatedButton(
                                                                              onPressed: () async {
                                                                                try {
                                                                                  // it's not a real future call, await not necessary
                                                                                  pageStore.setActivityDistricts(targetStore, []);
                                                                                } catch (error) {
                                                                                  messageHandler.handleApiException(context, error, 'Clear');
                                                                                }
                                                                                Navigator.of(context).pop();
                                                                              },
                                                                              child: new Text(
                                                                                AppLocalizations.of(context).lookUpValue(context, 'Yes'),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ));
                                                              }),
                                                          1: JudoMenuItemData(
                                                              value: 1,
                                                              label: AppLocalizations.of(context).lookUpValue(context, 'Add'),
                                                              icon: Icon(getIconByString('add_link')),
                                                              disabled: pageStore.pageState.disabledByLoading || !targetStore.internal__updatable,
                                                              onSelected: () async {
                                                                var selected = await judoSelectAdminAdminUsersUpdateActivityDistrictsDialog(
                                                                  context: context,
                                                                  ownerStore: targetStore,
                                                                  pageStore: pageStore,
                                                                  pageConfig: pageConfig,
                                                                  dialogTypeAdder: true,
                                                                );

                                                                if (selected != null) {
                                                                  try {
                                                                    // it's not a real future call, await not necessary
                                                                    pageStore.addActivityDistricts(targetStore, selected);
                                                                  } catch (error) {
                                                                    messageHandler.handleApiException(context, error, 'Add');
                                                                  }
                                                                }
                                                              }),
                                                        },
                                                        rowActionList: [
                                                          TableRowAction(
                                                            disabled: (element) =>
                                                                pageStore.pageState.disabledByLoading || !targetStore?.internal__updatable ?? true,
                                                            label: AppLocalizations.of(context).lookUpValue(context, 'Remove'),
                                                            icon: Icon(getIconByString('link_off')),
                                                            action: (element) {
                                                              try {
                                                                // it's not a real future call, await not necessary
                                                                pageStore.removeActivityDistricts(targetStore, element);
                                                              } catch (error) {
                                                                messageHandler.handleApiException(context, error, 'Remove');
                                                              }
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
