app.factory 'GrievancesFactory', ($firebase, BASEURI) ->
  grievancesRef = new Firebase BASEURI + 'grievances'
  grievances = $firebase grievancesRef

  return {
    retrieveGrievances: grievances
  }

app.controller 'GrievancesController', ($scope, GrievancesFactory) ->
  $scope.grievances = GrievancesFactory.retrieveGrievances
  $scope.predicate = '-respondedDate'
  $scope.showDetails = (data) ->
    $scope.grievance = data
