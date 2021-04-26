import 'package:akawo_app/components/reusable_banner.dart';
import 'package:akawo_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:popup_menu/popup_menu.dart';
import 'package:akawo_app/components/icon_content.dart';
import 'package:akawo_app/components/reusable_icon_card.dart';

enum Page {
  Home,
  Transfer,
  Deposit,
  Withdraw,
  Wallet,
  Account,
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Page selectedPage;
  PopupMenu menu;
  GlobalKey btnKey = GlobalKey();
  GlobalKey btnKey2 = GlobalKey();
  GlobalKey btnKey3 = GlobalKey();
  @override
  void initState() {
    super.initState();

    menu = PopupMenu(items: [
      // MenuItem(title: 'Copy', image: Image.asset('assets/copy.png')),
      // MenuItem(title: 'Home', image: Icon(Icons.home, color: Colors.white,)),
      MenuItem(
          title: 'Mail',
          image: Icon(
            Icons.mail,
            color: Colors.white,
          )),
      MenuItem(
          title: 'Power',
          image: Icon(
            Icons.power,
            color: Colors.white,
          )),
      MenuItem(
          title: 'Setting',
          image: Icon(
            Icons.settings,
            color: Colors.white,
          )),
      MenuItem(
          title: 'PopupMenu',
          image: Icon(
            Icons.menu,
            color: Colors.white,
          ))
    ], onClickMenu: onClickMenu, onDismiss: onDismiss, maxColumn: 4);
  }

  void stateChanged(bool isShow) {
    print('menu is ${isShow ? 'showing' : 'closed'}');
  }

  void onClickMenu(MenuItemProvider item) {
    print('Click menu -> ${item.menuTitle}');
  }

  void onDismiss() {
    print('Menu is dismiss');
  }

  void onDismissOnlyBeCalledOnce() {
    menu.show(widgetKey: btnKey3);
  }

  void checkState(BuildContext context) {
    final snackBar = new SnackBar(content: new Text('这是一个SnackBar!'));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void maxColumn() {
    PopupMenu menu = PopupMenu(
        //backgroundColor: Colors.white,
        lineColor: Colors.transparent,
        maxColumn: 1,
        items: [
          // MenuItem(
          //   title: 'Copy',
          //   image: Image.asset('images/in.png'),
          // ),
          MenuItem(
              title: 'Home',
              // textStyle: TextStyle(fontSize: 10.0, color: Colors.tealAccent),
              image: Icon(
                Icons.home,
                color: Colors.white,
              )),
          MenuItem(
              title: 'Privacy Policy',
              image: Icon(
                FontAwesomeIcons.userLock,
                color: Colors.white,
              )),
          MenuItem(
              title: 'Power',
              image: Icon(
                Icons.power,
                color: Colors.white,
              )),
          MenuItem(
              title: 'Setting',
              image: Icon(
                Icons.settings,
                color: Colors.white,
              )),
          MenuItem(
              title: 'PopupMenu',
              image: Icon(
                Icons.menu,
                color: Colors.white,
              ))
        ],
        onClickMenu: onClickMenu,
        stateChanged: stateChanged,
        onDismiss: onDismiss);
    menu.show(widgetKey: btnKey);
  }

  //
  void customBackground() {
    PopupMenu menu = PopupMenu(
        // backgroundColor: Colors.teal,
        // lineColor: Colors.tealAccent,
        // maxColumn: 2,
        items: [
          MenuItem(title: 'Copy', image: Image.asset('assets/copy.png')),
          MenuItem(
              title: 'Home',
              // textStyle: TextStyle(fontSize: 10.0, color: Colors.tealAccent),
              image: Icon(
                Icons.home,
                color: Colors.white,
              )),
          MenuItem(
              title: 'Mail',
              image: Icon(
                Icons.mail,
                color: Colors.white,
              )),
          MenuItem(
              title: 'Power',
              image: Icon(
                Icons.power,
                color: Colors.white,
              )),
          MenuItem(
              title: 'Setting',
              image: Icon(
                Icons.settings,
                color: Colors.white,
              )),
          MenuItem(
              title: 'PopupMenu',
              image: Icon(
                Icons.menu,
                color: Colors.white,
              ))
        ],
        onClickMenu: onClickMenu,
        stateChanged: stateChanged,
        onDismiss: onDismiss);
    menu.show(widgetKey: btnKey2);
  }

  @override
  Widget build(BuildContext context) {
    PopupMenu.context = context;
    return Scaffold(
      //extendBodyBehindAppBar: false,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: AssetImage('images/login_page_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.only(top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
        constraints: BoxConstraints.expand(),
        child: Column(
          children: <Widget>[
            SizedBox(height: 25.0),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      // decoration: BoxDecoration(color: Colors.transparent),
                      alignment: Alignment.bottomLeft,
                      child: ReusableIconCard(
                          key: btnKey,
                          onPress: () {
                            maxColumn();
                          },
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.stream,
                            colour: Colors.white,
                            label: '',
                          )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomRight,
                      child: ReusableIconCard(
                          // onPress: () {
                          //   setState(() {});
                          // },
                          cardChild: IconContent(
                        icon: FontAwesomeIcons.bell,
                        colour: Colors.white,
                        label: '',
                      )),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 25),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  border: Border.all(width: 2.0, color: Colors.white),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                width: 289.0,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Hi *first name, surname',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text('insert ID no'),
                    Text('Available Balance'),
                    Text('N20,000')
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: ReusableBanner(
                          colour: kBannerDefaultColor,
                        )),
                        Expanded(
                            child: ReusableBanner(
                          colour: kBannerDefaultColor,
                        ))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: ReusableBanner(
                          colour: kBannerDefaultColor,
                        )),
                        Expanded(
                            child: ReusableBanner(colour: kBannerDefaultColor))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: ReusableBanner(
                          colour: kBannerDefaultColor,
                        )),
                        Expanded(
                            child: ReusableBanner(colour: kBannerDefaultColor))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: ReusableIconCard(
                      onPress: () {
                        setState(() {
                          selectedPage = Page.Home;
                        });
                      },
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.home,
                        colour: selectedPage == Page.Home
                            ? kActivePageColor
                            : kInactivePageColor,
                        label: 'Home',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableIconCard(
                      onPress: () {
                        setState(() {
                          selectedPage = Page.Transfer;
                        });
                      },
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.random,
                        colour: selectedPage == Page.Transfer
                            ? kActivePageColor
                            : kInactivePageColor,
                        label: 'Transfer',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableIconCard(
                      onPress: () {
                        setState(() {
                          selectedPage = Page.Deposit;
                        });
                      },
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.creditCard,
                        colour: selectedPage == Page.Deposit
                            ? kActivePageColor
                            : kInactivePageColor,
                        label: 'Deposit',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableIconCard(
                      onPress: () {
                        setState(() {
                          selectedPage = Page.Withdraw;
                        });
                      },
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.handHoldingUsd,
                        colour: selectedPage == Page.Withdraw
                            ? kActivePageColor
                            : kInactivePageColor,
                        label: 'Withdraw',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableIconCard(
                      onPress: () {
                        setState(() {
                          selectedPage = Page.Wallet;
                        });
                      },
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.wallet,
                        colour: selectedPage == Page.Wallet
                            ? kActivePageColor
                            : kInactivePageColor,
                        label: 'Wallet',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableIconCard(
                      onPress: () {
                        setState(() {
                          selectedPage = Page.Account;
                        });
                      },
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.user,
                        colour: selectedPage == Page.Account
                            ? kActivePageColor
                            : kInactivePageColor,
                        label: 'Account',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
