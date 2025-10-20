az login


### Modify the following variables to match your environment

$pseudoRootManagementGroup = "gscon"
$platformManagementGroup = "Platform"
$identityManagementGroup = "Identity"
$managementManagementGroup = "Management"
$connectivityManagementGroup = "Connectivity"
$LZManagementGroup="LandingZones"




### Run the following commands to initiate remediation

## Run the following command only if still using custom Service Health policy
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $pseudoRootManagementGroup -policyName Alerting-ServiceHealth

## Run the following command only if switched the new built-in Service Health policy
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $pseudoRootManagementGroup -policyName Alerting-ResourceAndServiceHealth
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $pseudoRootManagementGroup -policyName Notification-Assets
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $platformManagementGroup -policyName Alerting-HybridVM
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $platformManagementGroup -policyName Alerting-VM
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $connectivityManagementGroup -policyName Alerting-Connectivity
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $connectivityManagementGroup -policyName Alerting-Connectivity-2
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $identityManagementGroup -policyName Alerting-Identity
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $managementManagementGroup -policyName Alerting-Management
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-KeyManagement
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-LoadBalancing
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-NetworkChanges
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-RecoveryServices
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-Storage
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-HybridVM
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-VM
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-Web




### Run the following command to initiate remediation of a single policy definition
.\patterns\alz\scripts\Start-AMBA-ALZ-Remediation.ps1 -managementGroupName $pseudoRootManagementGroup -policyName ALZ_AlertProcessing_Rule