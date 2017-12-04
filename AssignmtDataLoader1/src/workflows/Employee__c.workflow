<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Mail_to_the_Administrator</fullName>
        <ccEmails>chaturvedi1196@gmail.com</ccEmails>
        <description>Mail to the Administrator</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <recipients>
            <recipient>saumya@espl.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <fieldUpdates>
        <fullName>CuuentEmp_NT_RecordType</fullName>
        <description>Assignment of AS model2</description>
        <field>RecordTypeId</field>
        <lookupValue>Non_Technical</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>CuuentEmp_NT RecordType</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Ownerchnged</fullName>
        <description>Assignment to the Administrator</description>
        <field>OwnerId</field>
        <lookupValue>saumya@espl.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Ownerchnged</name>
        <notifyAssignee>true</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>updated_the_Unique_Field</fullName>
        <field>Unique__c</field>
        <formula>Roles__r.Name</formula>
        <name>updated the Unique Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>CurrentEmp</fullName>
        <actions>
            <name>CuuentEmp_NT_RecordType</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Employee__c.Current_Employee__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Assignment of AS model2</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>EmployeeDeactive</fullName>
        <actions>
            <name>Mail_to_the_Administrator</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Ownerchnged</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Employee__c.Is_Active__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>One to One</fullName>
        <actions>
            <name>updated_the_Unique_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>NOT(ISBLANK(Roles__r.Name))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
