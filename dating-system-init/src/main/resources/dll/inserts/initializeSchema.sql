
    create table addresses (
        id int4 not null,
        address_comment varchar(100),
        geohash varchar(16),
        latitude varchar(12),
        longitude varchar(12),
        street varchar(64),
        streetnumber varchar(5),
        federalstate_id int4,
        zipcode_id int4,
        primary key (id)
    );
create table basenames (
        id int4 not null,
        version int4,
        name varchar(512),
        primary key (id)
    );
create table blacklisted_contacts (
        user_data_id int4 not null,
        blacklisted_id int4 not null,
        primary key (user_data_id, blacklisted_id)
    );
create table bundle_application_bundlenames (
        application_id int4 not null,
        bundlenames_id int4 not null,
        primary key (application_id, bundlenames_id)
    );
create table bundle_applications (
        id int4 not null,
        version int4,
        name varchar(1024) unique,
        primary key (id)
    );
create table bundlenames (
        id int4 not null,
        version int4,
        base_name_id int4,
        locale_id int4,
        primary key (id)
    );
create table contactmethods (
        id int4 not null,
        contactmethod varchar(255),
        contactvalue varchar(1024),
        primary key (id)
    );
create table countries (
        id int4 not null,
        iso3166_a2name varchar(2),
        iso3166_a3name varchar(3),
        iso3166_number varchar(3),
        name varchar(128),
        primary key (id)
    );
create table default_locale_basenames (
        id int4 not null,
        version int4,
        bundlename_id int4,
        default_locale_id int4,
        primary key (id)
    );
create table favorite_members (
        id int4 not null,
        favorite_id int4,
        owner_id int4,
        primary key (id)
    );
create table federalstates (
        id int4 not null,
        iso3166_a2code varchar(6),
        name varchar(128),
        subdivision_category varchar(128),
        subdivision_name varchar(56),
        country_id int4,
        primary key (id)
    );
create table friendship_requests (
        id int4 not null,
        accepted_date timestamp,
        state varchar(255),
        requested_user_id int4,
        requestor_id int4,
        primary key (id)
    );
create table language_locales (
        id int4 not null,
        version int4,
        locale varchar(64) unique,
        primary key (id)
    );
create table languages (
        id int4 not null,
        version int4,
        name varchar(64) unique,
        iso639_1 varchar(2),
        primary key (id)
    );
create table message_attachments (
        message_id int4 not null,
        resource_id int4 not null,
        primary key (message_id, resource_id)
    );
create table message_recipients (
        id int4 not null,
        message_id int4,
        recipient_id int4,
        recipient_email int4,
        primary key (id)
    );
create table messages (
        id int4 not null,
        failed2sentemail bool,
        folder varchar(64),
        messageContent varchar(21845),
        messagetype varchar(255),
        read_flag bool,
        recipient_deleted_flag bool,
        sender_deleted_flag bool,
        sent_date timestamp,
        spam_flag bool,
        state varchar(255),
        subject varchar(1000),
        parent int4,
        sender int4,
        sender_email int4,
        primary key (id)
    );
create table permissions (
        id int4 not null,
        description varchar(64),
        permissionName varchar(64) unique,
        shortcut varchar(10) unique,
        primary key (id)
    );
create table profile_notice (
        id int4 not null,
        notice varchar(1000),
        user_id int4,
        user_profile int4,
        primary key (id)
    );
create table profile_ratings (
        id int4 not null,
        rating_date timestamp,
        rating_description varchar(1024),
        rating_points int4,
        title_rating varchar(256),
        visibility varchar(255),
        rater int4,
        rated_profile int4,
        primary key (id)
    );
create table profile_visitors (
        id int4 not null,
        count int4,
        visiting_date timestamp,
        visited_profile int4,
        visitor_id int4,
        primary key (id)
    );
create table properties_keys (
        id int4 not null,
        version int4,
        name varchar(1024),
        primary key (id)
    );
create table recommendations (
        id int4 not null,
        email varchar(1024),
        invitation_text varchar(1024),
        sent bool,
        recommended_id int4,
        user_id int4,
        primary key (id)
    );
create table relation_permissions (
        id int4 not null,
        provider_id int4,
        subscriber_id int4,
        primary key (id)
    );
create table reset_passwords (
        id int4 not null,
        expiry_date timestamp,
        generated_password varchar(1024),
        starttime timestamp,
        user_id int4,
        primary key (id)
    );
create table resourcebundles (
        id int4 not null,
        version int4,
        value varchar(2048),
        bundlename_id int4,
        properties_key_id int4,
        primary key (id)
    );
create table resources (
        id int4 not null,
        checksum varchar(255),
        content BYTEA,
        contentType varchar(64),
        created timestamp,
        deleted_flag bool,
        description varchar(1024),
        filename varchar(1024),
        filesize varchar(64),
        primary key (id)
    );
create table robinsons (
        id int4 not null,
        robinson_user_id int4,
        primary key (id)
    );
create table role_permissions (
        role_id int4 not null,
        permission_id int4 not null,
        primary key (role_id, permission_id)
    );
create table roles (
        id int4 not null,
        description varchar(64),
        rolename varchar(64) unique,
        primary key (id)
    );
create table rule_violations (
        id int4 not null,
        description varchar(1000),
        reason varchar(255),
        detector_user_id int4,
        violator_user_id int4,
        primary key (id)
    );
create table search_criteria (
        id int4 not null,
        from_age int4,
        search_gender varchar(255),
        until_age int4,
        primary key (id)
    );
create table user_addresses (
        user_data_id int4 not null,
        addresses_id int4 not null,
        primary key (user_data_id, addresses_id)
    );
create table user_contactmethods (
        user_data_id int4 not null,
        contactmethods_id int4 not null,
        primary key (user_data_id, contactmethods_id)
    );
create table user_contacts (
        user_data_id int4 not null,
        user_contact_id int4 not null,
        primary key (user_data_id, user_contact_id)
    );
create table user_credits (
        id int4 not null,
        credits int4,
        user_id int4,
        primary key (id)
    );
create table user_data (
        id int4 not null,
        birthname varchar(64),
        dateofbirth timestamp,
        firstname varchar(64),
        gender varchar(255),
        ip_address varchar(16),
        lastname varchar(64),
        locale varchar(12),
        owner int4,
        primary_address_id int4,
        primary key (id)
    );
create table user_profile (
        id int4 not null,
        age int4,
        education_state varchar(255),
        figure varchar(255),
        haircolor varchar(255),
        height int4,
        interests varchar(255),
        occupation varchar(50),
        profile_text varchar(1000),
        relationship_status varchar(255),
        smokerstate varchar(255),
        weight int4,
        zodiac_sign varchar(255),
        search_criteria int4,
        user_id int4,
        image_id int4,
        primary key (id)
    );
create table user_relation_permissions (
        user_relation_permission_id int4 not null,
        permission_id int4 not null,
        primary key (user_relation_permission_id, permission_id)
    );
create table user_resources (
        user_data_id int4 not null,
        resources_id int4 not null,
        primary key (user_data_id, resources_id)
    );
create table user_roles (
        user_id int4 not null,
        role_id int4 not null,
        primary key (user_id, role_id)
    );
create table user_tokens (
        id int4 not null,
        expiry timestamp,
        token varchar(128) unique,
        username varchar(256) unique,
        primary key (id)
    );
create table users (
        id int4 not null,
        active bool,
        locked bool,
        pw varchar(1024),
        salt varchar(8),
        username varchar(256) unique,
        primary key (id)
    );
create table zipcodes (
        id int4 not null,
        city varchar(128),
        zipcode varchar(10) not null,
        country_id int4,
        primary key (id)
    );


create TYPE contactmethodtype as enum (
	'EMAIL', 'MAIL', 'TELEFON', 'FAX', 'MOBILE', 'SMS', 'MESSENGER', 'INTERNET', 'NEWSGROUP'
);
CREATE TYPE educationstate AS ENUM (
	'HAUPTSCHULE', 'REALSCHULE', 'GYMNASIUM', 'ABITUR', 'LEHRE', 'HOCHSCHULE'
);
CREATE TYPE figuretype AS ENUM (
	'SCHLANK', 'SPORTLICH', 'NORMAL', 'MOLLIG', 'FETT'
);
CREATE TYPE friendshiprequeststate AS ENUM (
	'REFUSED', 'AWAITING', 'ACCEPTED'
);
CREATE TYPE gendertype AS ENUM (
	'MALE', 'FEMALE', 'INCORPORATION', 'UNDEFINED'
);
CREATE TYPE haircolortype AS ENUM (
	'BLOND', 'BRAUN', 'SCHWARZ', 'ROT', 'GLATZE', 'OTHER'
);
CREATE TYPE intereststype AS ENUM (
	'MAILFRIENDSHIP', 'FLIRT', 'SOLIDRELATIONSHIP', 'SPORTRELATIONSHIP', 'ADVENTURE'
);
create TYPE messagestatetype as enum (
	'SIGNED', 'CONTACTED', 'EXPELLED', 'UNREPLIED', 'DELETED'
);
create TYPE messagetypetype as enum (
	'MAIL', 'REPLY', 'NOTE'
);
create TYPE visibilitytype as enum (
	'INVISIBLE', 'APPROVED', 'DENIED'
);
CREATE TYPE relationshipstate AS ENUM (
	'LEDIG', 'LEDIGMITPARTNER', 'VERHEIRATET', 'GETRENNT', 'GESCHIEDEN', 'VERWITWET'
);
create TYPE smokerstatetype as enum (
	'SMOKER', 'OCCASIONAL_SMOKER', 'NON_SMOKER'
);
CREATE TYPE zodiacsigntype AS ENUM (
	'WIDDER', 'STIER', 'ZWILLINGE', 'KREBS', 'LOEWE', 'JUNGFRAU', 'WAAGE', 'SKORPION', 'SCHUETZE', 'STEINBOCK', 'WASSERMANN', 'FISCHE'
);

create TYPE ruleviolationreasontype as enum (
	'ABUSE', 'RACIST', 'ADVERTISING', 'OTHER'
);



alter table contactmethods drop column contactmethod;    
alter table contactmethods add contactmethod contactmethodType;

alter table friendship_requests drop column state;    
alter table friendship_requests add state friendshipRequestState;

alter table user_data drop column gender;    
alter table user_data add gender genderType;

alter table messages drop column state;    
alter table messages add state messageStateType;

alter table messages drop column messagetype;    
alter table messages add messagetype messageTypeType;

alter table profile_ratings drop column visibility;    
alter table profile_ratings add visibility visibilityType;

alter table search_criteria drop column search_gender;    
alter table search_criteria add search_gender genderType;

alter table user_profile drop column relationship_status;    
alter table user_profile add relationship_status relationshipState;

alter table user_profile drop column smokerstate;    
alter table user_profile add smokerstate smokerstateType;

alter table user_profile drop column zodiac_sign;    
alter table user_profile add zodiac_sign zodiacSignType;

alter table user_profile drop column haircolor;    
alter table user_profile add haircolor haircolorType;

alter table user_profile drop column interests;    
alter table user_profile add interests interestsType;

alter table user_profile drop column education_state;    
alter table user_profile add education_state educationState;

alter table user_profile drop column figure;    
alter table user_profile add figure figureType;

alter table rule_violations drop column reason;    
alter table rule_violations add reason ruleviolationreasontype;
alter table addresses add constraint FK34207BA2FBFE6130 foreign key (zipcode_id) references zipcodes;
alter table addresses add constraint FK34207BA27EE00646 foreign key (federalstate_id) references federalstates;
alter table blacklisted_contacts add constraint FKA1253AB649A61DF foreign key (blacklisted_id) references users;
alter table blacklisted_contacts add constraint FKA1253AB64E23EC72 foreign key (user_data_id) references user_data;
alter table bundle_application_bundlenames add constraint FKE03DE2DA81FDD8D7 foreign key (bundlenames_id) references bundlenames;
alter table bundle_application_bundlenames add constraint FKE03DE2DA64F45D92 foreign key (application_id) references bundle_applications;
alter table bundlenames add constraint FKF230A806D4CC327E foreign key (locale_id) references language_locales;
alter table bundlenames add constraint FKF230A80663C76715 foreign key (base_name_id) references basenames;
alter table default_locale_basenames add constraint FKC87181B017DEE600 foreign key (default_locale_id) references language_locales;
alter table default_locale_basenames add constraint FKC87181B0BE71D570 foreign key (bundlename_id) references bundlenames;
alter table favorite_members add constraint FKE79ADD76C3D248 foreign key (owner_id) references users;
alter table favorite_members add constraint FKE79ADD7620FE8067 foreign key (favorite_id) references user_profile;
alter table federalstates add constraint FK1A5486DFAE853FD9 foreign key (country_id) references countries;
alter table friendship_requests add constraint FK8AE72089EC30F7E9 foreign key (requestor_id) references users;
alter table friendship_requests add constraint FK8AE7208941AA125F foreign key (requested_user_id) references users;
alter table message_attachments add constraint FK64E05778311BBAC0 foreign key (resource_id) references resources;
alter table message_attachments add constraint FK64E05778D45A1211 foreign key (message_id) references messages;
alter table message_recipients add constraint FKF83BACB2468E2270 foreign key (recipient_email) references contactmethods;
alter table message_recipients add constraint FKF83BACB2D45A1211 foreign key (message_id) references messages;
alter table message_recipients add constraint FKF83BACB2E9005122 foreign key (recipient_id) references users;
alter table messages add constraint FKE475014CFDCB7A68 foreign key (parent) references messages;
alter table messages add constraint FKE475014C67A24E56 foreign key (sender) references users;
alter table messages add constraint FKE475014CF13D458C foreign key (sender_email) references contactmethods;
alter table profile_notice add constraint FKCED38A2E94DD2230 foreign key (user_id) references users;
alter table profile_notice add constraint FKCED38A2EDC16AEFE foreign key (user_profile) references user_profile;
alter table profile_ratings add constraint FKC752F9E0F1B549B7 foreign key (rated_profile) references user_profile;
alter table profile_ratings add constraint FKC752F9E0A41683B3 foreign key (rater) references users;
alter table profile_visitors add constraint FK6810CF9B2CE0275D foreign key (visited_profile) references user_profile;
alter table profile_visitors add constraint FK6810CF9B3066F2AD foreign key (visitor_id) references users;
alter table recommendations add constraint FK9357B7DA94DD2230 foreign key (user_id) references users;
alter table recommendations add constraint FK9357B7DA608365A0 foreign key (recommended_id) references users;
alter table relation_permissions add constraint FK634032C1FB63A073 foreign key (subscriber_id) references users;
alter table relation_permissions add constraint FK634032C118B30E4A foreign key (provider_id) references users;
alter table reset_passwords add constraint FK35B79A4894DD2230 foreign key (user_id) references users;
alter table resourcebundles add constraint FKD0A7106365054731 foreign key (properties_key_id) references properties_keys;
alter table resourcebundles add constraint FKD0A71063BE71D570 foreign key (bundlename_id) references bundlenames;
alter table robinsons add constraint FKAAF79CBA77A9C99 foreign key (robinson_user_id) references users;
alter table role_permissions add constraint FKEAD9D23BEF87CA5A foreign key (role_id) references roles;
alter table role_permissions add constraint FKEAD9D23B91DD8968 foreign key (permission_id) references permissions;
alter table rule_violations add constraint FK99170D1187CEBAB7 foreign key (detector_user_id) references users;
alter table rule_violations add constraint FK99170D11D85AF017 foreign key (violator_user_id) references users;
alter table user_addresses add constraint FK9188602E4E23EC72 foreign key (user_data_id) references user_data;
alter table user_addresses add constraint FK9188602EDEBFF13B foreign key (addresses_id) references addresses;
alter table user_contactmethods add constraint FKA59F56864E23EC72 foreign key (user_data_id) references user_data;
alter table user_contactmethods add constraint FKA59F568644566562 foreign key (contactmethods_id) references contactmethods;
alter table user_contacts add constraint FKE130BA47F58D3AAF foreign key (user_contact_id) references users;
alter table user_contacts add constraint FKE130BA474E23EC72 foreign key (user_data_id) references user_data;
alter table user_credits add constraint FK983F4C2694DD2230 foreign key (user_id) references users;
alter table user_data add constraint FK1435639EA3F626D4 foreign key (owner) references users;
alter table user_data add constraint FK1435639E8089EA06 foreign key (primary_address_id) references addresses;
alter table user_profile add constraint FK487E213594DD2230 foreign key (user_id) references users;
alter table user_profile add constraint FK487E2135B449B653 foreign key (image_id) references resources;
alter table user_profile add constraint FK487E2135A35E0ACE foreign key (search_criteria) references search_criteria;
alter table user_relation_permissions add constraint FKDBE83EB591DD8968 foreign key (permission_id) references permissions;
alter table user_relation_permissions add constraint FKDBE83EB532C37ABD foreign key (user_relation_permission_id) references relation_permissions;
alter table user_resources add constraint FKE734A2B1D0AAF549 foreign key (resources_id) references resources;
alter table user_resources add constraint FKE734A2B14E23EC72 foreign key (user_data_id) references user_data;
alter table user_roles add constraint FK73429949EF87CA5A foreign key (role_id) references roles;
alter table user_roles add constraint FK7342994994DD2230 foreign key (user_id) references users;
alter table zipcodes add constraint FKF88385A5AE853FD9 foreign key (country_id) references countries;
create sequence hibernate_sequence;
