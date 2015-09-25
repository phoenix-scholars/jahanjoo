app.controller('WikiController', function($scope, $stateParams, $help) {
	var page = 'main';
	if ($stateParams.name)
		page = $stateParams.name;
	$help.get(page).then(function(wiki) {
		$scope.page = wiki;
	}, function() {
		// XXX: page not found
	});
});
