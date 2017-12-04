<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Follow_up_email</fullName>
        <description>Follow up email</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Email</template>
    </alerts>
    <fieldUpdates>
        <fullName>DNC_Lead</fullName>
        <field>RecordTypeId</field>
        <lookupValue>DNC</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>DNC Lead</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Landline</fullName>
        <field>RecordTypeId</field>
        <lookupValue>LANDLINE</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Landline</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Mobile</fullName>
        <field>RecordTypeId</field>
        <lookupValue>MOBILE</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Mobile</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>DNC Lead</fullName>
        <actions>
            <name>DNC_Lead</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.DoNotCall</field>
            <operation>notEqual</operation>
            <value>False</value>
        </criteriaItems>
        <description>for DM2</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Follow up Lead</fullName>
        <actions>
            <name>Follow_up_email</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>TODAY()&gt;FollowUp_Date__c</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Landline</fullName>
        <actions>
            <name>Landline</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.CompanyDunsNumber</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <description>for DM2</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Mobile</fullName>
        <actions>
            <name>Mobile</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.MobilePhone</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <description>for DM2</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
