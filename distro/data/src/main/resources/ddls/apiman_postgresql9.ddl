-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/master.xml
-- Ran at: 10/10/19 9:48 AM
-- Against: null@offline:postgresql?version=9.3&caseSensitive=true&changeLogFile=C:\Users\fvolk\Workspace\e2ebridge\apiman\distro\ddl/target/changelog/postgresql/databasechangelog.csv
-- Liquibase version: 3.4.1
-- *********************************************************************

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/000-apiman-manager-api.db.sequences.changelog.xml::1434723514712-2::apiman (generated)
CREATE SEQUENCE public.hibernate_sequence START WITH 999;

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-1::apiman (generated)
CREATE TABLE public.client_versions (id BIGINT NOT NULL, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, modified_by VARCHAR(255) NOT NULL, modified_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, published_on TIMESTAMP WITHOUT TIME ZONE, retired_on TIMESTAMP WITHOUT TIME ZONE, status VARCHAR(255) NOT NULL, version VARCHAR(255) NOT NULL, client_id VARCHAR(255), client_org_id VARCHAR(255), apikey VARCHAR(255) NOT NULL);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-2::apiman (generated)
CREATE TABLE public.clients (id VARCHAR(255) NOT NULL, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, description VARCHAR(512), name VARCHAR(255) NOT NULL, organization_id VARCHAR(255) NOT NULL);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-3::apiman (generated)
CREATE TABLE public.auditlog (id BIGINT NOT NULL, created_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, data TEXT, entity_id VARCHAR(255), entity_type VARCHAR(255) NOT NULL, entity_version VARCHAR(255), organization_id VARCHAR(255) NOT NULL, what VARCHAR(255) NOT NULL, who VARCHAR(255) NOT NULL);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-4::apiman (generated)
CREATE TABLE public.contracts (id BIGINT NOT NULL, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, clientv_id BIGINT, planv_id BIGINT, apiv_id BIGINT);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-5::apiman (generated)
CREATE TABLE public.endpoint_properties (api_version_id BIGINT NOT NULL, value VARCHAR(255), name VARCHAR(255) NOT NULL);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-6::apiman (generated)
CREATE TABLE public.gateways (id VARCHAR(255) NOT NULL, configuration TEXT NOT NULL, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, description VARCHAR(512), modified_by VARCHAR(255) NOT NULL, modified_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, name VARCHAR(255) NOT NULL, type VARCHAR(255) NOT NULL);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-7::apiman (generated)
CREATE TABLE public.memberships (id BIGINT NOT NULL, created_on TIMESTAMP WITHOUT TIME ZONE, org_id VARCHAR(255), role_id VARCHAR(255), user_id VARCHAR(255));

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-8::apiman (generated)
CREATE TABLE public.organizations (id VARCHAR(255) NOT NULL, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, description VARCHAR(512), modified_by VARCHAR(255) NOT NULL, modified_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, name VARCHAR(255) NOT NULL);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-9::apiman (generated)
CREATE TABLE public.pd_templates (policydef_id VARCHAR(255) NOT NULL, language VARCHAR(255), template VARCHAR(2048));

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-10::apiman (generated)
CREATE TABLE public.permissions (role_id VARCHAR(255) NOT NULL, permissions INT);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-11::apiman (generated)
CREATE TABLE public.plan_versions (id BIGINT NOT NULL, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, locked_on TIMESTAMP WITHOUT TIME ZONE, modified_by VARCHAR(255) NOT NULL, modified_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, status VARCHAR(255) NOT NULL, version VARCHAR(255) NOT NULL, plan_id VARCHAR(255), plan_org_id VARCHAR(255));

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-12::apiman (generated)
CREATE TABLE public.plans (id VARCHAR(255) NOT NULL, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, description VARCHAR(512), name VARCHAR(255) NOT NULL, organization_id VARCHAR(255) NOT NULL);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-13::apiman (generated)
CREATE TABLE public.plugins (id BIGINT NOT NULL, artifact_id VARCHAR(255) NOT NULL, classifier VARCHAR(255), created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, description VARCHAR(512), group_id VARCHAR(255) NOT NULL, name VARCHAR(255) NOT NULL, type VARCHAR(255), version VARCHAR(255) NOT NULL, deleted BOOLEAN);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-14::apiman (generated)
CREATE TABLE public.policies (id BIGINT NOT NULL, configuration TEXT, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, entity_id VARCHAR(255) NOT NULL, entity_version VARCHAR(255) NOT NULL, modified_by VARCHAR(255) NOT NULL, modified_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, name VARCHAR(255) NOT NULL, order_index INT NOT NULL, organization_id VARCHAR(255) NOT NULL, type VARCHAR(255) NOT NULL, definition_id VARCHAR(255) NOT NULL);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-15::apiman (generated)
CREATE TABLE public.policydefs (id VARCHAR(255) NOT NULL, description VARCHAR(512) NOT NULL, form VARCHAR(255), form_type VARCHAR(255), icon VARCHAR(255) NOT NULL, name VARCHAR(255) NOT NULL, plugin_id BIGINT, policy_impl VARCHAR(255) NOT NULL, deleted BOOLEAN);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-16::apiman (generated)
CREATE TABLE public.roles (id VARCHAR(255) NOT NULL, auto_grant BOOLEAN, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, description VARCHAR(512), name VARCHAR(255));

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-17::apiman (generated)
CREATE TABLE public.api_defs (id BIGINT NOT NULL, data BYTEA, api_version_id BIGINT);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-18::apiman (generated)
CREATE TABLE public.api_versions (id BIGINT NOT NULL, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, definition_type VARCHAR(255), endpoint VARCHAR(255), endpoint_type VARCHAR(255), endpoint_ct VARCHAR(255), modified_by VARCHAR(255) NOT NULL, modified_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, public_api BOOLEAN NOT NULL, parse_payload BOOLEAN, published_on TIMESTAMP WITHOUT TIME ZONE, retired_on TIMESTAMP WITHOUT TIME ZONE, status VARCHAR(255) NOT NULL, version VARCHAR(255), api_id VARCHAR(255), api_org_id VARCHAR(255), definition_url VARCHAR(255));

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-19::apiman (generated)
CREATE TABLE public.apis (id VARCHAR(255) NOT NULL, created_by VARCHAR(255) NOT NULL, created_on TIMESTAMP WITHOUT TIME ZONE NOT NULL, description VARCHAR(512), name VARCHAR(255) NOT NULL, organization_id VARCHAR(255) NOT NULL, num_published INT);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-20::apiman (generated)
CREATE TABLE public.api_gateways (api_version_id BIGINT NOT NULL, gateway_id VARCHAR(255) NOT NULL);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-21::apiman (generated)
CREATE TABLE public.api_plans (api_version_id BIGINT NOT NULL, plan_id VARCHAR(255) NOT NULL, version VARCHAR(255) NOT NULL);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-22::apiman (generated)
CREATE TABLE public.users (username VARCHAR(255) NOT NULL, email VARCHAR(255), full_name VARCHAR(255), joined_on TIMESTAMP WITHOUT TIME ZONE);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/010-apiman-manager-api.db.tables.changelog.xml::1436469846462-23::apiman (generated)
CREATE TABLE public.downloads (id VARCHAR(255) NOT NULL, type VARCHAR(255), path VARCHAR(255), expires TIMESTAMP WITHOUT TIME ZONE);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-23::apiman (generated)
ALTER TABLE public.endpoint_properties ADD PRIMARY KEY (api_version_id, name);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-24::apiman (generated)
ALTER TABLE public.api_gateways ADD PRIMARY KEY (api_version_id, gateway_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-25::apiman (generated)
ALTER TABLE public.api_plans ADD PRIMARY KEY (api_version_id, plan_id, version);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-26::apiman (generated)
ALTER TABLE public.client_versions ADD CONSTRAINT "client_versionsPK" PRIMARY KEY (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-27::apiman (generated)
ALTER TABLE public.clients ADD CONSTRAINT "clientsPK" PRIMARY KEY (id, organization_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-28::apiman (generated)
ALTER TABLE public.auditlog ADD CONSTRAINT "auditlogPK" PRIMARY KEY (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-29::apiman (generated)
ALTER TABLE public.contracts ADD CONSTRAINT "contractsPK" PRIMARY KEY (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-30::apiman (generated)
ALTER TABLE public.gateways ADD CONSTRAINT "gatewaysPK" PRIMARY KEY (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-31::apiman (generated)
ALTER TABLE public.memberships ADD CONSTRAINT "membershipsPK" PRIMARY KEY (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-32::apiman (generated)
ALTER TABLE public.organizations ADD CONSTRAINT "organizationsPK" PRIMARY KEY (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-33::apiman (generated)
ALTER TABLE public.plan_versions ADD CONSTRAINT "plan_versionsPK" PRIMARY KEY (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-34::apiman (generated)
ALTER TABLE public.plans ADD CONSTRAINT "plansPK" PRIMARY KEY (id, organization_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-35::apiman (generated)
ALTER TABLE public.plugins ADD CONSTRAINT "pluginsPK" PRIMARY KEY (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-36::apiman (generated)
ALTER TABLE public.policies ADD CONSTRAINT "policiesPK" PRIMARY KEY (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-37::apiman (generated)
ALTER TABLE public.policydefs ADD CONSTRAINT "policydefsPK" PRIMARY KEY (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-38::apiman (generated)
ALTER TABLE public.roles ADD CONSTRAINT "rolesPK" PRIMARY KEY (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-39::apiman (generated)
ALTER TABLE public.api_defs ADD CONSTRAINT "api_defsPK" PRIMARY KEY (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-40::apiman (generated)
ALTER TABLE public.api_versions ADD CONSTRAINT "api_versionsPK" PRIMARY KEY (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-41::apiman (generated)
ALTER TABLE public.apis ADD CONSTRAINT "apisPK" PRIMARY KEY (id, organization_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-42::apiman (generated)
ALTER TABLE public.users ADD CONSTRAINT "usersPK" PRIMARY KEY (username);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-43::apiman (generated)
ALTER TABLE public.apis ADD CONSTRAINT "FK_31hj3xmhp1wedxjh5bklnlg15" FOREIGN KEY (organization_id) REFERENCES public.organizations (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-44::apiman (generated)
ALTER TABLE public.contracts ADD CONSTRAINT "FK_6h06sgs4dudh1wehmk0us973g" FOREIGN KEY (clientv_id) REFERENCES public.client_versions (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-45::apiman (generated)
ALTER TABLE public.api_defs ADD CONSTRAINT "FK_81fuw1n8afmvpw4buk7l4tyxk" FOREIGN KEY (api_version_id) REFERENCES public.api_versions (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-46::apiman (generated)
ALTER TABLE public.client_versions ADD CONSTRAINT "FK_8epnoby31bt7xakegakigpikp" FOREIGN KEY (client_id, client_org_id) REFERENCES public.clients (id, organization_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-47::apiman (generated)
ALTER TABLE public.contracts ADD CONSTRAINT "FK_8o6t1f3kg96rxy5uv51f6k9fy" FOREIGN KEY (apiv_id) REFERENCES public.api_versions (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-48::apiman (generated)
ALTER TABLE public.api_versions ADD CONSTRAINT "FK_92erjg9k1lni97gd87nt6tq37" FOREIGN KEY (api_id, api_org_id) REFERENCES public.apis (id, organization_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-49::apiman (generated)
ALTER TABLE public.endpoint_properties ADD CONSTRAINT "FK_gn0ydqur10sxuvpyw2jvv4xxb" FOREIGN KEY (api_version_id) REFERENCES public.api_versions (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-50::apiman (generated)
ALTER TABLE public.clients ADD CONSTRAINT "FK_jenpu34rtuncsgvtw0sfo8qq9" FOREIGN KEY (organization_id) REFERENCES public.organizations (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-51::apiman (generated)
ALTER TABLE public.policies ADD CONSTRAINT "FK_l4q6we1bos1yl9unmogei6aja" FOREIGN KEY (definition_id) REFERENCES public.policydefs (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-52::apiman (generated)
ALTER TABLE public.plans ADD CONSTRAINT "FK_lwhc7xrdbsun1ak2uvfu0prj8" FOREIGN KEY (organization_id) REFERENCES public.organizations (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-53::apiman (generated)
ALTER TABLE public.contracts ADD CONSTRAINT "FK_nyw8xu6m8cx4rwwbtrxbjneui" FOREIGN KEY (planv_id) REFERENCES public.plan_versions (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-54::apiman (generated)
ALTER TABLE public.api_gateways ADD CONSTRAINT "FK_p5dm3cngljt6yrsnvc7uc6a75" FOREIGN KEY (api_version_id) REFERENCES public.api_versions (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-55::apiman (generated)
ALTER TABLE public.pd_templates ADD CONSTRAINT "FK_prbnn7j7m6m3pxt2dsn9gwlw8" FOREIGN KEY (policydef_id) REFERENCES public.policydefs (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-56::apiman (generated)
ALTER TABLE public.permissions ADD CONSTRAINT "FK_sq51ihfrapwdr98uufenhcocg" FOREIGN KEY (role_id) REFERENCES public.roles (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-57::apiman (generated)
ALTER TABLE public.api_plans ADD CONSTRAINT "FK_t7uvfcsswopb9kh8wpa86blqr" FOREIGN KEY (api_version_id) REFERENCES public.api_versions (id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/100-apiman-manager-api.db.constraints.changelog.xml::1436469846462-58::apiman (generated)
ALTER TABLE public.plan_versions ADD CONSTRAINT "FK_tonylvm2ypnq3efxqr1g0m9fs" FOREIGN KEY (plan_id, plan_org_id) REFERENCES public.plans (id, organization_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/110-apiman-manager-api.db.unique.constraints.changelog.xml::addUniqueConstraint-1::apiman
ALTER TABLE public.plugins ADD CONSTRAINT "UK_plugins_1" UNIQUE (group_id, artifact_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/110-apiman-manager-api.db.unique.constraints.changelog.xml::addUniqueConstraint-2::apiman
ALTER TABLE public.memberships ADD CONSTRAINT "UK_memberships_1" UNIQUE (user_id, role_id, org_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/110-apiman-manager-api.db.unique.constraints.changelog.xml::addUniqueConstraint-3::apiman
ALTER TABLE public.plan_versions ADD CONSTRAINT "UK_plan_versions_1" UNIQUE (plan_id, plan_org_id, version);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/110-apiman-manager-api.db.unique.constraints.changelog.xml::addUniqueConstraint-4::apiman
ALTER TABLE public.client_versions ADD CONSTRAINT "UK_client_versions_1" UNIQUE (client_id, client_org_id, version);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/110-apiman-manager-api.db.unique.constraints.changelog.xml::addUniqueConstraint-5::apiman
ALTER TABLE public.api_versions ADD CONSTRAINT "UK_api_versions_1" UNIQUE (api_id, api_org_id, version);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/110-apiman-manager-api.db.unique.constraints.changelog.xml::addUniqueConstraint-6::apiman
ALTER TABLE public.api_defs ADD CONSTRAINT "UK_api_defs_1" UNIQUE (api_version_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/110-apiman-manager-api.db.unique.constraints.changelog.xml::addUniqueConstraint-7::apiman
ALTER TABLE public.contracts ADD CONSTRAINT "UK_contracts_1" UNIQUE (clientv_id, apiv_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/110-apiman-manager-api.db.unique.constraints.changelog.xml::addUniqueConstraint-8::apiman
ALTER TABLE public.client_versions ADD CONSTRAINT "UK_client_versions_2" UNIQUE (apikey);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/200-apiman-manager-api.db.indexes.changelog.xml::createIndex-1::apiman
CREATE INDEX "IDX_auditlog_1" ON public.auditlog(who);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/200-apiman-manager-api.db.indexes.changelog.xml::createIndex-2::apiman
CREATE INDEX "IDX_auditlog_2" ON public.auditlog(organization_id, entity_id, entity_version, entity_type);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/200-apiman-manager-api.db.indexes.changelog.xml::createIndex-3::apiman
CREATE INDEX "IDX_FK_pd_templates_1" ON public.pd_templates(policydef_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/200-apiman-manager-api.db.indexes.changelog.xml::createIndex-4::apiman
CREATE INDEX "IDX_users_1" ON public.users(username);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/200-apiman-manager-api.db.indexes.changelog.xml::createIndex-5::apiman
CREATE INDEX "IDX_users_2" ON public.users(full_name);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/200-apiman-manager-api.db.indexes.changelog.xml::createIndex-6::apiman
CREATE INDEX "IDX_FK_permissions_1" ON public.permissions(role_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/200-apiman-manager-api.db.indexes.changelog.xml::createIndex-7::apiman
CREATE INDEX "IDX_memberships_1" ON public.memberships(user_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/200-apiman-manager-api.db.indexes.changelog.xml::createIndex-8::apiman
CREATE INDEX "IDX_organizations_1" ON public.organizations(name);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/200-apiman-manager-api.db.indexes.changelog.xml::createIndex-9::apiman
CREATE INDEX "IDX_FK_plans_1" ON public.plans(organization_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/200-apiman-manager-api.db.indexes.changelog.xml::createIndex-10::apiman
CREATE INDEX "IDX_FK_clients_1" ON public.clients(organization_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/200-apiman-manager-api.db.indexes.changelog.xml::createIndex-11::apiman
CREATE INDEX "IDX_apis_1" ON public.apis(name);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/200-apiman-manager-api.db.indexes.changelog.xml::createIndex-12::apiman
CREATE INDEX "IDX_FK_apis_1" ON public.apis(organization_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/200-apiman-manager-api.db.indexes.changelog.xml::createIndex-13::apiman
CREATE INDEX "IDX_policies_1" ON public.policies(organization_id, entity_id, entity_version);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/200-apiman-manager-api.db.indexes.changelog.xml::createIndex-14::apiman
CREATE INDEX "IDX_policies_2" ON public.policies(order_index);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/200-apiman-manager-api.db.indexes.changelog.xml::createIndex-15::apiman
CREATE INDEX "IDX_FK_policies_1" ON public.policies(definition_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/200-apiman-manager-api.db.indexes.changelog.xml::createIndex-16::apiman
CREATE INDEX "IDX_FK_contracts_p" ON public.contracts(planv_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/200-apiman-manager-api.db.indexes.changelog.xml::createIndex-17::apiman
CREATE INDEX "IDX_FK_contracts_s" ON public.contracts(apiv_id);

-- Changeset C:/Users/fvolk/Workspace/e2ebridge/apiman/distro/ddl/src/main/liquibase/current/200-apiman-manager-api.db.indexes.changelog.xml::createIndex-18::apiman
CREATE INDEX "IDX_FK_contracts_a" ON public.contracts(clientv_id);

