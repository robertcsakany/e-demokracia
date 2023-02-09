//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Factory expression: #factoryExpressionForPageContainers(#application)
// Path expression: #pageBodyPath(#self.owner,#self.layoutType.name)
// Template name: lib/ui/pages/page/page_body.dart.hbs
// Application: edemokracia::admin::Admin
// Container: tablet

part of admin.ui.pages.admin.dashboard.create_user.operation_input;

Widget getAdminDashboardCreateUserOperationInputTabletPage(BuildContext context, AdminCreateUserInputStore targetStore,
    AdminDashboardCreateUserOperationInputPageStore pageStore, AdminDashboardCreateUserOperationInputConfig pageConfig, Map inputWidgetKeyMap) {
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
              col: 8.0,
              row: 6.2857142857142865,
              children: [
                JudoColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  col: 8.0,
                  row: 6.2857142857142865,
                  children: [
                    JudoColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      col: 8.0,
                      row: 2.0,
                      card: true,
                      frameMargin: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
                      children: [
                        JudoLabel(
                          col: 8.0,
                          label: AppLocalizations.of(context).lookUpValue(context, 'Security'),
                          icon: Icon(getIconByString('security')),
                          iconMargin: 4.0,
                        ),
                        JudoRow(
                          mainAxisAlignment: MainAxisAlignment.start,
                          col: 8.0,
                          row: 1.0,
                          children: [
                            Observer(
                                builder: (_) => JudoInputText(
                                      key: inputWidgetKeyMap['userName'],
                                      order: 1,
                                      errorMessage: pageStore.validationAttributeErrorMessageMap['userName'].message,
                                      col: 4.0,
                                      maxLength: 255 ?? 250,
                                      label: AppLocalizations.of(context).lookUpValue(context, 'UserName'),
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
                                errorMessage: pageStore.validationAttributeErrorMessageMap['hasAdminAccess'].message,
                                label: AppLocalizations.of(context).lookUpValue(context, 'IsAdmin'),
                                icon: Icon(getIconByString('list')),
                                initialValue: targetStore.hasAdminAccess,
                                onChanged: (value) {
                                  targetStore.setHasAdminAccess(value);
                                  if (pageConfig.postHasAdminAccessChanged != null) {
                                    pageConfig.postHasAdminAccessChanged(targetStore.hasAdminAccess, pageStore: pageStore, targetStore: targetStore);
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
                      col: 8.0,
                      row: 3.0,
                      card: true,
                      frameMargin: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
                      children: [
                        JudoLabel(
                          col: 8.0,
                          label: AppLocalizations.of(context).lookUpValue(context, 'Personal'),
                          icon: Icon(getIconByString('card-account-details')),
                          iconMargin: 4.0,
                        ),
                        JudoRow(
                          mainAxisAlignment: MainAxisAlignment.start,
                          col: 8.0,
                          row: 2.0,
                          children: [
                            JudoColumn(
                              mainAxisAlignment: MainAxisAlignment.center,
                              col: 8.0,
                              row: 2.0,
                              children: [
                                JudoRow(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  col: 8.0,
                                  row: 2.0,
                                  children: [
                                    JudoRow(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      col: 8.0,
                                      row: 2.0,
                                      children: [
                                        JudoColumn(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          col: 8.0,
                                          row: 2.0,
                                          children: [
                                            JudoRow(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              col: 8.0,
                                              row: 1.0,
                                              children: [
                                                Observer(
                                                    builder: (_) => JudoInputText(
                                                          key: inputWidgetKeyMap['firstName'],
                                                          order: 3,
                                                          errorMessage: pageStore.validationAttributeErrorMessageMap['firstName'].message,
                                                          col: 4.0,
                                                          maxLength: 255 ?? 250,
                                                          label: AppLocalizations.of(context).lookUpValue(context, 'FirstName'),
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
                                                              pageConfig.postFirstNameChanged(targetStore.firstName,
                                                                  pageStore: pageStore, targetStore: targetStore);
                                                            }
                                                          },
                                                        )),
                                                Observer(
                                                    builder: (_) => JudoInputText(
                                                          key: inputWidgetKeyMap['lastName'],
                                                          order: 4,
                                                          errorMessage: pageStore.validationAttributeErrorMessageMap['lastName'].message,
                                                          col: 4.0,
                                                          maxLength: 255 ?? 250,
                                                          label: AppLocalizations.of(context).lookUpValue(context, 'LastName'),
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
                                                              pageConfig.postLastNameChanged(targetStore.lastName,
                                                                  pageStore: pageStore, targetStore: targetStore);
                                                            }
                                                          },
                                                        )),
                                              ],
                                            ),
                                            JudoRow(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              col: 8.0,
                                              row: 1.0,
                                              children: [
                                                Observer(
                                                    builder: (_) => JudoInputText(
                                                          key: inputWidgetKeyMap['email'],
                                                          order: 5,
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
                                                          order: 6,
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
                      ],
                    ),
                    JudoRow(
                      mainAxisAlignment: MainAxisAlignment.start,
                      col: 8.0,
                      row: 1.0,
                      children: [
                        Observer(
                            builder: (_) => JudoButton(
                                  col: 4.0,
                                  label: AppLocalizations.of(context).lookUpValue(context, 'OK'),
                                  icon: Icon(getIconByString('check')),
                                  loadingState: pageStore.okButtonLoadingState,
                                  order: 7,
                                  disabled: pageStore.pageState.disabledByLoading || false,
                                  onPressed: () async {
                                    try {
                                      if (pageConfig.operationCall != null) {
                                        await pageConfig.operationCall(
                                          navigation: navigation,
                                          targetStore: targetStore,
                                          pageStore: pageStore,
                                        );
                                      } else {
                                        bool success = await pageStore.operationCall(targetStore, pageStore);
                                        if (success) {
                                          if (pageConfig.operationCallSuccess != null) {
                                            await pageConfig.operationCallSuccess(
                                              navigation: navigation,
                                              targetStore: targetStore,
                                              pageStore: pageStore,
                                            );
                                          } else {
                                            navigation.close(true); // must send back true to view page to trigger refresh if the operation call is successful
                                          }
                                        }
                                      }
                                    } catch (error) {
                                      messageHandler.handleApiException(context, error, 'OK', pageStore.validationAttributeErrorMessageMap);
                                    }
                                  },
                                )),
                        Observer(
                            builder: (_) => JudoButton(
                                  col: 4.0,
                                  label: AppLocalizations.of(context).lookUpValue(context, 'Cancel'),
                                  icon: Icon(getIconByString('close-circle-outline')),
                                  loadingState: pageStore.cancelButtonLoadingState,
                                  order: 8,
                                  disabled: pageStore.pageState.disabledByLoading || false,
                                  onPressed: () async {
                                    try {
                                      if (pageConfig.operationCall != null) {
                                        await pageConfig.operationCall(
                                          navigation: navigation,
                                          targetStore: targetStore,
                                          pageStore: pageStore,
                                        );
                                      } else {
                                        bool success = await pageStore.operationCall(targetStore, pageStore);
                                        if (success) {
                                          if (pageConfig.operationCallSuccess != null) {
                                            await pageConfig.operationCallSuccess(
                                              navigation: navigation,
                                              targetStore: targetStore,
                                              pageStore: pageStore,
                                            );
                                          } else {
                                            navigation.close(true); // must send back true to view page to trigger refresh if the operation call is successful
                                          }
                                        }
                                      }
                                    } catch (error) {
                                      messageHandler.handleApiException(context, error, 'OK', pageStore.validationAttributeErrorMessageMap);
                                    }
                                  },
                                )),
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
