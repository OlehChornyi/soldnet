enum DialogBg { snake, zebra, tiger, cheeta, leopard, leaves }

typedef DialogBgInfo = ({String bg, String front, String back});

DialogBgInfo getDataDialogBg(DialogBg tab) {
  return switch (tab) {
    DialogBg.snake => (
        bg: 'assets/images/chat/snake_bg.png',
        front: 'assets/images/profile/snake_s.png',
        back: 'assets/icons/profile/scroll_1.svg'
      ),
    DialogBg.zebra => (
        bg: 'assets/images/chat/zebra_bg.png',
        front: 'assets/images/profile/zebra_s.png',
        back: 'assets/icons/profile/scroll_2.svg'
      ),
    DialogBg.tiger => (
        bg: 'assets/images/chat/tiger_bg.png',
        front: 'assets/images/profile/tiger_s.png',
        back: 'assets/icons/profile/scroll_3.svg'
      ),
    DialogBg.cheeta => (
        bg: 'assets/images/chat/cheeta_bg.png',
        front: 'assets/images/profile/cheeta_s.png',
        back: 'assets/icons/profile/scroll_4.svg'
      ),
    DialogBg.leopard => (
        bg: 'assets/images/chat/leopard_bg.png',
        front: 'assets/images/profile/leopard_s.png',
        back: 'assets/icons/profile/scroll_5.svg'
      ),
    DialogBg.leaves => (
        bg: 'assets/images/chat/leaves_bg.png',
        front: 'assets/images/profile/leaves_s.png',
        back: 'assets/icons/profile/scroll_6.svg'
      ),
  };
}
