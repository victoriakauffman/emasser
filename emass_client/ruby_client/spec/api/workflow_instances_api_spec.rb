=begin
#Enterprise Mission Assurance Support Service (eMASS)

#The Enterprise Mission Assurance Support Service (eMASS) Representational State Transfer (REST) Application Programming Interface (API) enables users to perform assessments and complete actions associated with system records.   The `emasser` is a command-line interface (CLI) tool that implements all of the  eMASS endpoints defined in the eMASS REST API v3.2, dated October 21, 2021.</br><br>  <strong>Register CLI</strong></br> New users will need to register an API key with the eMASS development team prior to accessing the site for the first time. The eMASS REST API requires a client certificate (SSL/TLS, DoD PKI only) where {url}/api/register (POST) is used to register the client certificate.</br></br>  Every call to the eMASS REST API will require the use of the agreed upon public key certificate and API key. The API key must be provided in the request header for all endpoint calls (api-key). If the service receives an untrusted certificate or API key, a 401 error response code will be returned along with an error message.</br></br>  <strong>Available Request Headers:</strong></br> <table>   <tr>     <th align=left>key</th>     <th align=left>Example Value</th>     <th align=left>Description</th>   </tr>   <tr>     <td>`api-key`</td>     <td>api-key-provided-by-emass</td>     <td>This API key must be provided in the request header for all endpoint calls</td>   </tr>   <tr>     <td>`user-uid`</td>     <td>USER.UID.KEY</td>     <td>This User unique identifier key must be provided in the request header for all PUT, POST, and DELETE endpoint calls</td>   </tr>   <tr>     <td></td><td></td>     <td>       Note: For DoD users this is the DoD ID Number (EIDIPI) on their DoD CAC     </td>   </tr> </table>  </br><strong>Approve API Client for Actionable Requests</strong></br> Users are required to log-in to eMASS and grant permissions for a client to update data within eMASS on their behalf. This is only required for actionable requests (PUT, POST, DELETE). The Registration Endpoint and all GET requests can be accessed without completing this process with the correct permissions. Please note that leaving a field parameter blank (for PUT/POST requests) has the potential to clear information in the active eMASS records.  To establish an account with eMASS and/or acquire an api-key/user-uid, contact one of the listed POC: 

OpenAPI spec version: v3.2
Contact: disa.meade.id.mbx.emass-tier-iii-support@mail.mil
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.26
=end

require 'spec_helper'
require 'json'

# Unit tests for EmassClient::WorkflowInstancesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WorkflowInstancesApi' do
  before do
    # run before each test
    @instance = EmassClient::WorkflowInstancesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WorkflowInstancesApi' do
    it 'should create an instance of WorkflowInstancesApi' do
      expect(@instance).to be_instance_of(EmassClient::WorkflowInstancesApi)
    end
  end

  # unit tests for get_system_workflow_instances
  # Get workflow instances in a system
  # View detailed information on all active and historical workflows for a system &#x60;systemId&#x60; and filtered by provided parameters.
  # @param system_id **System Id**: The unique system record identifier.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :include_comments **Include Comments**: If no value is specified, the default returns true to not include transition comments.  Note: Corresponds to the Comments textbox that is required at most workflow transitions. Does not include other text input fields such as Terms / Conditions for Authorization. 
  # @option opts [Integer] :page_index **Page Index**: If no value is specified, the default returns true to not include transition comments.
  # @option opts [String] :since_date **Date**: Filter on authorization/assessment date (Unix date format).  Note: Filters off the lastEditedDate field.  Note: The authorization/assessment decisions on completed workflows  can be edited for up to 30 days after the initial decision is made. 
  # @option opts [String] :status **Status**: Filter by status.  If no value is specified, the default returns all to include both active and inactive workflows.  Note: Any workflows at a current stage of Complete or Cancelled are inactive. Ongoing workflows currently at other stages are active. 
  # @return [WorkflowInstancesResponseGet]
  describe 'get_system_workflow_instances test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_system_workflow_instances_by_workflow_instance_id
  # Get workflow instance by ID in a system
  # View detailed information on all active and historical workflows for a system &#x60;systemId&#x60; and &#x60;workflowInstanceId&#x60;.
  # @param system_id **System Id**: The unique system record identifier.
  # @param workflow_instance_id **Workflow Instance Id**: The unique milestone record identifier.
  # @param [Hash] opts the optional parameters
  # @return [WorkflowInstancesResponseGet]
  describe 'get_system_workflow_instances_by_workflow_instance_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
