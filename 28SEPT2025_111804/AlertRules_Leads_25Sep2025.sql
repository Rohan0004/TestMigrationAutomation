-- script modifications done by code
BEGIN TRANSACTION;
SELECT * INTO AlertRuleVisibility_backup_20250925_111632_1 FROM AlertRuleVisibility WHERE OwnerID = 969 AND RuleId IN (212);
Delete FROM dbo.AlertRuleVisibility WHERE OwnerID = 969 AND RuleId IN (212)
SELECT * INTO AlertRules_backup_20250925_111632_1 FROM AlertRules WHERE OwnerID = 969 AND RuleId IN (212);
Delete FROM dbo.AlertRules WHERE OwnerID = 969 AND RuleId IN (212)

INSERT INTO [dbo].[AlertRules] (OwnerId,RuleId,ItemType,AlertType,Title,Description,Message,TargetField,FilterCondition,AppliesTo,IsActive,DisplayOrder,AppliesFrom,ExpiresOn,PromptAction,ProcessId,LayoutId,CreatedOn,CreatedBy,LastModifiedOn,LastModifiedBy,FieldColorMapping,ApplyForAdmin,LastModifiedByType,ScopeId,IPAddress,ClientSideExecution,IsHideControl,CategoryID) VALUES(969,212,6,3,N'Restriction On Updating  Leads - CC Users',N' ',N'You are not allowed the update the leads in Processing  & Closure Milestone',Null,N'<expressions><andorexpression value="" /><expression fieldname="LayoutID" op="0" value="10204020" displaytext="Lead Management" enddatevalue="" enddatedisplay="" type="0" valuetype="-1" isparameterized="False" index="-1" crtvalueis="0" crtfieldkeyid="0" smins="0" emins="0" istimespecify="False" isMandatory="False" isPrompt="False" fieldMode="" ftype="" excludetext="" rightfieldkeyId="0" /><expression fieldname="LEA_EX1_47" op="13" value="" displaytext="" enddatevalue="" enddatedisplay="" type="0" valuetype="-1" isparameterized="False" index="-1" crtvalueis="0" crtfieldkeyid="6" smins="0" emins="0" istimespecify="False" isMandatory="False" isPrompt="False" fieldMode="" ftype="" excludetext="" rightfieldkeyId="0" /><expression fieldname="LEA_EX1_55" op="13" value="" displaytext="" enddatevalue="" enddatedisplay="" type="0" valuetype="-1" isparameterized="False" index="-1" crtvalueis="0" crtfieldkeyid="6" smins="0" emins="0" istimespecify="False" isMandatory="False" isPrompt="False" fieldMode="" ftype="" excludetext="" rightfieldkeyId="0" /><expression fieldname="currentrole" op="0" value="1001" displaytext="Call Center Executive" enddatevalue="" enddatedisplay="" type="0" valuetype="-1" isparameterized="False" index="-1" crtvalueis="0" crtfieldkeyid="30" smins="0" emins="0" istimespecify="False" isMandatory="False" isPrompt="False" fieldMode="UserField" ftype="" excludetext="" rightfieldkeyId="0" /><expression fieldname="LastModifiedByType" op="8" value="0,15" displaytext=" Main UI,UI" enddatevalue="" enddatedisplay="" type="0" valuetype="-1" isparameterized="False" index="-1" crtvalueis="0" crtfieldkeyid="0" smins="0" emins="0" istimespecify="False" isMandatory="False" isPrompt="False" fieldMode="" ftype="" excludetext="" rightfieldkeyId="0" /></expressions>',4,1,0,Null,Null,1,0,-1,'2025-03-25 10:29:05',1,'2025-03-28 06:17:52',1,N'',1,0,1,Null,0,0,Null)


-- Commenting out script from here to end as 'Update IDlist' was found
-- Update IDlist Set LastId = t.MaxId from  (select OwnerID, max ( RuleId ) as MaxId from dbo.AlertRules Group by OwnerID) as t Where IdList.ItemId = 244 and t.OwnerID = IdList.OwnerID 
-- 
-- Update AlertRules SET CreatedBy = 1,LastModifiedBy = 1 Where OwnerID = 969

IF @@ERROR <> 0
BEGIN
  PRINT 'TRANSACTION FAILED. ROLLING BACK';
  ROLLBACK;
  RETURN;
END;

COMMIT;