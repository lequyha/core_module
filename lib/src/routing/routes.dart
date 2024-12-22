class Routes {
  static const kSubmitCode = '/submitCode';
  static const kLogin = '/login';
  static const kLayout = '/layout';
  static const kTicketDetail = '/ticket/detail/:ticketId/:phaseId';
  static String getkTicketDetail({required int ticketId, int? phaseId}) =>
      '/ticket/detail/$ticketId/$phaseId';
  static const kWorkflow = '/workflow';
}
