<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Approval</fullName>
        <description>Approval</description>
        <protected>false</protected>
        <recipients>
            <recipient>Manager</recipient>
            <type>role</type>
        </recipients>
        <recipients>
            <recipient>saumya@espl.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Approver_Manager</template>
    </alerts>
    <rules>
        <fullName>Big Deal</fullName>
        <actions>
            <name>Approval</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Negotiation/Review</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterThan</operation>
            <value>50000</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
