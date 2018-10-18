//参考：http://liruu.com/angularjs/angularjs-note/chap02.html

// 1）モジュールオブジェクト
angular.module('myApp', [])
  // 2）モジュールオブジェクトのメソッド
  .controller('MyController', function ($scope, CustomList) {
    // 3）スコープオブジェクト
    $scope.msg = 'AngularJS 1.5.7に入門中';
    $scope.today = new Date();
    $scope.ctmls = CustomList();
  })
  .value('CustomList', function () {
    return [{
        title: 'bootstrapリファレンス',
        price: 12000,
        published: new Date(2016, 1, 18)
      },
      {
        title: 'wordpressリファレンス',
        price: 15000,
        published: new Date(2016, 4, 18)
      },
      {
        title: 'HTMLリファレンス',
        price: 2500,
        published: new Date(2016, 7, 18)
      },
      {
        title: 'CSSリファレンス',
        price: 5000,
        published: new Date(2016, 6, 18)
      },
      {
        title: 'jQueryリファレンス',
        price: 7500,
        published: new Date(2016, 5, 18)
      },
      {
        title: 'mySQLリファレンス',
        price: 10000,
        published: new Date(2016, 4, 18)
      }
    ];
  });
