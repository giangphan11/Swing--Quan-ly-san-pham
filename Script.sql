--<ScriptOptions statementTerminator="GO"/>

ALTER TABLE "dbo"."SanPham" DROP CONSTRAINT "FK__SanPham__MaDM__1273C1CD"
GO

ALTER TABLE "dbo"."SanPham" DROP CONSTRAINT "PK__SanPham__2725081C14C65FF6"
GO

ALTER TABLE "dbo"."DanhMuc" DROP CONSTRAINT "PK__DanhMuc__2725864E1636F7F7"
GO

DROP VIEW "sys"."external_file_formats"
GO

DROP VIEW "sys"."dm_exec_query_optimizer_info"
GO

DROP VIEW "sys"."dm_xtp_gc_queue_stats"
GO

DROP VIEW "sys"."dm_repl_traninfo"
GO

DROP VIEW "sys"."server_events"
GO

DROP VIEW "sys"."dm_xe_session_events"
GO

DROP VIEW "sys"."dm_db_persisted_sku_features"
GO

DROP VIEW "INFORMATION_SCHEMA"."CONSTRAINT_COLUMN_USAGE"
GO

DROP VIEW "sys"."tables"
GO

DROP VIEW "sys"."syscharsets"
GO

DROP VIEW "sys"."symmetric_keys"
GO

DROP VIEW "sys"."availability_groups_cluster"
GO

DROP VIEW "sys"."filetables"
GO

DROP VIEW "sys"."database_recovery_status"
GO

DROP VIEW "sys"."dm_os_ring_buffers"
GO

DROP VIEW "sys"."sysmembers"
GO

DROP VIEW "sys"."dm_os_nodes"
GO

DROP VIEW "sys"."dm_tran_active_snapshot_database_transactions"
GO

DROP VIEW "sys"."sysdevices"
GO

DROP VIEW "sys"."dm_os_memory_broker_clerks"
GO

DROP VIEW "sys"."linked_logins"
GO

DROP VIEW "sys"."spatial_index_tessellations"
GO

DROP VIEW "sys"."sysmessages"
GO

DROP VIEW "sys"."dm_hadr_auto_page_repair"
GO

DROP VIEW "sys"."dm_os_buffer_descriptors"
GO

DROP VIEW "sys"."dm_exec_sessions"
GO

DROP VIEW "sys"."service_contract_message_usages"
GO

DROP VIEW "sys"."sysdepends"
GO

DROP VIEW "sys"."dm_db_file_space_usage"
GO

DROP VIEW "sys"."dm_fts_memory_pools"
GO

DROP VIEW "sys"."dm_repl_articles"
GO

DROP VIEW "sys"."dm_hadr_cluster"
GO

DROP VIEW "sys"."dm_os_sys_info"
GO

DROP VIEW "sys"."partition_functions"
GO

DROP VIEW "sys"."syscursorcolumns"
GO

DROP VIEW "sys"."dm_os_memory_brokers"
GO

DROP VIEW "sys"."xml_schema_wildcards"
GO

DROP VIEW "sys"."dm_repl_schemas"
GO

DROP VIEW "sys"."dm_hadr_name_id_map"
GO

DROP VIEW "sys"."external_data_sources"
GO

DROP VIEW "sys"."procedures"
GO

DROP VIEW "sys"."filetable_system_defined_objects"
GO

DROP VIEW "sys"."server_event_notifications"
GO

DROP VIEW "sys"."dm_xe_objects"
GO

DROP VIEW "sys"."fulltext_indexes"
GO

DROP VIEW "sys"."sysremotelogins"
GO

DROP VIEW "sys"."syspermissions"
GO

DROP VIEW "sys"."availability_group_listener_ip_addresses"
GO

DROP VIEW "sys"."schemas"
GO

DROP VIEW "sys"."endpoint_webmethods"
GO

DROP VIEW "sys"."dm_broker_forwarded_messages"
GO

DROP VIEW "sys"."foreign_keys"
GO

DROP VIEW "sys"."sql_expression_dependencies"
GO

DROP VIEW "sys"."xml_schema_components"
GO

DROP VIEW "sys"."system_parameters"
GO

DROP VIEW "sys"."dm_tran_current_snapshot"
GO

DROP VIEW "sys"."server_event_session_targets"
GO

DROP VIEW "sys"."dm_tran_top_version_generators"
GO

DROP VIEW "sys"."change_tracking_databases"
GO

DROP VIEW "sys"."event_notification_event_types"
GO

DROP VIEW "sys"."plan_guides"
GO

DROP VIEW "sys"."dm_os_child_instances"
GO

DROP VIEW "sys"."sysperfinfo"
GO

DROP VIEW "sys"."dm_broker_activated_tasks"
GO

DROP VIEW "sys"."column_store_dictionaries"
GO

DROP VIEW "sys"."server_audit_specifications"
GO

DROP VIEW "INFORMATION_SCHEMA"."CONSTRAINT_TABLE_USAGE"
GO

DROP VIEW "sys"."sysservers"
GO

DROP VIEW "sys"."server_event_session_fields"
GO

DROP VIEW "sys"."dm_os_memory_cache_counters"
GO

DROP VIEW "sys"."fulltext_semantic_language_statistics_database"
GO

DROP VIEW "sys"."sysprocesses"
GO

DROP VIEW "sys"."dm_fts_semantic_similarity_population"
GO

DROP VIEW "sys"."master_files"
GO

DROP VIEW "sys"."dm_server_registry"
GO

DROP VIEW "sys"."dm_os_virtual_address_dump"
GO

DROP VIEW "sys"."sysconfigures"
GO

DROP VIEW "sys"."service_contract_usages"
GO

DROP VIEW "sys"."fulltext_index_catalog_usages"
GO

DROP VIEW "sys"."syslockinfo"
GO

DROP VIEW "sys"."xml_schema_model_groups"
GO

DROP VIEW "sys"."sysfiles"
GO

DROP VIEW "sys"."external_tables"
GO

DROP VIEW "sys"."dm_cryptographic_provider_properties"
GO

DROP VIEW "sys"."all_sql_modules"
GO

DROP VIEW "sys"."dm_io_cluster_shared_drives"
GO

DROP VIEW "sys"."xml_schema_collections"
GO

DROP VIEW "sys"."availability_replicas"
GO

DROP VIEW "sys"."dm_fts_active_catalogs"
GO

DROP VIEW "sys"."databases"
GO

DROP VIEW "sys"."dm_hadr_instance_node_map"
GO

DROP VIEW "sys"."dm_os_memory_allocations"
GO

DROP VIEW "sys"."fulltext_index_columns"
GO

DROP VIEW "sys"."dm_os_performance_counters"
GO

DROP VIEW "sys"."crypt_properties"
GO

DROP VIEW "sys"."dm_broker_queue_monitors"
GO

DROP VIEW "sys"."tcp_endpoints"
GO

DROP VIEW "sys"."fulltext_catalogs"
GO

DROP VIEW "sys"."function_order_columns"
GO

DROP VIEW "sys"."dm_db_mirroring_past_actions"
GO

DROP VIEW "sys"."fulltext_stoplists"
GO

DROP VIEW "sys"."events"
GO

DROP VIEW "sys"."stats_columns"
GO

DROP VIEW "sys"."trigger_events"
GO

DROP VIEW "sys"."service_message_types"
GO

DROP VIEW "sys"."sysaltfiles"
GO

DROP VIEW "sys"."dm_os_memory_cache_clock_hands"
GO

DROP VIEW "sys"."module_assembly_usages"
GO

DROP VIEW "sys"."assembly_types"
GO

DROP VIEW "sys"."numbered_procedure_parameters"
GO

DROP VIEW "sys"."dm_os_cluster_properties"
GO

DROP VIEW "sys"."syscursortables"
GO

DROP VIEW "sys"."sysobjects"
GO

DROP VIEW "sys"."dm_os_worker_local_storage"
GO

DROP VIEW "sys"."dm_server_audit_status"
GO

DROP VIEW "sys"."dm_cdc_errors"
GO

DROP VIEW "sys"."server_event_session_events"
GO

DROP VIEW "sys"."dm_tran_session_transactions"
GO

DROP VIEW "sys"."dm_os_threads"
GO

DROP VIEW "sys"."sysfilegroups"
GO

DROP VIEW "sys"."message_type_xml_schema_collection_usages"
GO

DROP VIEW "sys"."dm_xe_packages"
GO

DROP VIEW "sys"."server_trigger_events"
GO

DROP VIEW "sys"."sysusers"
GO

DROP VIEW "sys"."soap_endpoints"
GO

DROP VIEW "sys"."dm_os_tasks"
GO

DROP VIEW "sys"."master_key_passwords"
GO

DROP VIEW "sys"."system_internals_allocation_units"
GO

DROP VIEW "sys"."dm_filestream_file_io_requests"
GO

DROP VIEW "sys"."dm_tran_commit_table"
GO

DROP VIEW "INFORMATION_SCHEMA"."REFERENTIAL_CONSTRAINTS"
GO

DROP VIEW "sys"."dm_db_xtp_hash_index_stats"
GO

DROP VIEW "sys"."dm_server_memory_dumps"
GO

DROP VIEW "sys"."remote_service_bindings"
GO

DROP VIEW "sys"."dm_os_latch_stats"
GO

DROP VIEW "sys"."dm_db_log_space_usage"
GO

DROP VIEW "sys"."dm_exec_procedure_stats"
GO

DROP VIEW "sys"."dm_os_schedulers"
GO

DROP VIEW "sys"."dm_tran_version_store"
GO

DROP VIEW "sys"."resource_governor_resource_pool_affinity"
GO

DROP VIEW "sys"."database_mirroring"
GO

DROP VIEW "sys"."dm_io_backup_tapes"
GO

DROP VIEW "sys"."dm_exec_requests"
GO

DROP VIEW "sys"."openkeys"
GO

DROP VIEW "sys"."fulltext_semantic_languages"
GO

DROP VIEW "sys"."dm_xtp_gc_stats"
GO

DROP VIEW "sys"."login_token"
GO

DROP VIEW "INFORMATION_SCHEMA"."DOMAINS"
GO

DROP VIEW "sys"."dm_os_dispatcher_pools"
GO

DROP VIEW "sys"."stats"
GO

DROP VIEW "sys"."syslogins"
GO

DROP VIEW "sys"."server_audit_specification_details"
GO

DROP VIEW "sys"."dm_db_xtp_checkpoint_files"
GO

DROP VIEW "sys"."dm_tran_active_transactions"
GO

DROP VIEW "sys"."system_components_surface_area_configuration"
GO

DROP VIEW "sys"."sysforeignkeys"
GO

DROP VIEW "sys"."trace_categories"
GO

DROP VIEW "sys"."fulltext_stopwords"
GO

DROP VIEW "sys"."dm_os_memory_nodes"
GO

DROP VIEW "sys"."xml_schema_component_placements"
GO

DROP VIEW "sys"."service_broker_endpoints"
GO

DROP VIEW "sys"."credentials"
GO

DROP VIEW "sys"."dm_exec_background_job_queue"
GO

DROP VIEW "sys"."dm_os_waiting_tasks"
GO

DROP VIEW "sys"."dm_db_xtp_object_stats"
GO

DROP VIEW "sys"."trigger_event_types"
GO

DROP VIEW "sys"."availability_group_listeners"
GO

DROP VIEW "INFORMATION_SCHEMA"."TABLE_PRIVILEGES"
GO

DROP VIEW "sys"."dm_tcp_listener_states"
GO

DROP VIEW "sys"."transmission_queue"
GO

DROP VIEW "sys"."table_types"
GO

DROP VIEW "sys"."dm_os_process_memory"
GO

DROP VIEW "sys"."dm_exec_query_stats"
GO

DROP VIEW "sys"."dm_os_cluster_nodes"
GO

DROP VIEW "sys"."messages"
GO

DROP VIEW "sys"."indexes"
GO

DROP VIEW "sys"."dm_hadr_availability_replica_cluster_states"
GO

DROP VIEW "sys"."dm_io_pending_io_requests"
GO

DROP VIEW "sys"."systypes"
GO

DROP VIEW "INFORMATION_SCHEMA"."SCHEMATA"
GO

DROP VIEW "sys"."partition_parameters"
GO

DROP VIEW "sys"."all_parameters"
GO

DROP VIEW "sys"."all_views"
GO

DROP VIEW "sys"."dm_exec_query_resource_semaphores"
GO

DROP VIEW "sys"."dm_xtp_threads"
GO

DROP VIEW "sys"."dm_db_xtp_checkpoint_stats"
GO

DROP VIEW "INFORMATION_SCHEMA"."SEQUENCES"
GO

DROP VIEW "INFORMATION_SCHEMA"."COLUMN_DOMAIN_USAGE"
GO

DROP VIEW "sys"."database_mirroring_witnesses"
GO

DROP VIEW "sys"."xml_schema_attributes"
GO

DROP VIEW "sys"."dm_clr_properties"
GO

DROP VIEW "sys"."resource_governor_resource_pools"
GO

DROP VIEW "INFORMATION_SCHEMA"."CHECK_CONSTRAINTS"
GO

DROP VIEW "sys"."sysconstraints"
GO

DROP VIEW "sys"."dm_fts_index_population"
GO

DROP VIEW "INFORMATION_SCHEMA"."TABLES"
GO

DROP VIEW "sys"."trace_subclass_values"
GO

DROP VIEW "sys"."dm_os_sublatches"
GO

DROP VIEW "sys"."dm_xe_sessions"
GO

DROP VIEW "sys"."dm_exec_query_profiles"
GO

DROP VIEW "sys"."dm_exec_trigger_stats"
GO

DROP VIEW "sys"."dm_exec_background_job_queue_stats"
GO

DROP VIEW "sys"."views"
GO

DROP VIEW "sys"."dm_resource_governor_workload_groups"
GO

DROP VIEW "sys"."dm_xtp_transaction_recent_rows"
GO

DROP VIEW "sys"."dm_os_sys_memory"
GO

DROP VIEW "sys"."dm_db_xtp_memory_consumers"
GO

DROP VIEW "sys"."check_constraints"
GO

DROP VIEW "sys"."xml_schema_namespaces"
GO

DROP VIEW "sys"."endpoints"
GO

DROP VIEW "sys"."extended_properties"
GO

DROP VIEW "sys"."parameters"
GO

DROP VIEW "sys"."routes"
GO

DROP VIEW "sys"."dm_os_windows_info"
GO

DROP VIEW "sys"."sysreferences"
GO

DROP VIEW "sys"."syscurconfigs"
GO

DROP VIEW "INFORMATION_SCHEMA"."COLUMNS"
GO

DROP VIEW "sys"."sysprotects"
GO

DROP VIEW "sys"."all_columns"
GO

DROP VIEW "sys"."dm_hadr_database_replica_cluster_states"
GO

DROP VIEW "sys"."dm_db_xtp_gc_cycle_stats"
GO

DROP VIEW "sys"."registered_search_properties"
GO

DROP VIEW "sys"."system_internals_partition_columns"
GO

DROP VIEW "sys"."spatial_reference_systems"
GO

DROP VIEW "sys"."dm_qn_subscriptions"
GO

DROP VIEW "sys"."server_sql_modules"
GO

DROP VIEW "sys"."conversation_endpoints"
GO

DROP VIEW "sys"."dm_hadr_cluster_members"
GO

DROP VIEW "sys"."server_principals"
GO

DROP VIEW "sys"."all_objects"
GO

DROP VIEW "sys"."dm_fts_population_ranges"
GO

DROP VIEW "sys"."computed_columns"
GO

DROP VIEW "sys"."dm_audit_actions"
GO

DROP VIEW "sys"."dm_os_loaded_modules"
GO

DROP VIEW "sys"."system_columns"
GO

DROP VIEW "sys"."data_spaces"
GO

DROP VIEW "sys"."xml_schema_facets"
GO

DROP VIEW "INFORMATION_SCHEMA"."KEY_COLUMN_USAGE"
GO

DROP VIEW "sys"."dm_os_dispatchers"
GO

DROP VIEW "sys"."dm_tran_transactions_snapshot"
GO

DROP VIEW "sys"."resource_governor_configuration"
GO

DROP VIEW "sys"."dm_io_cluster_valid_path_names"
GO

DROP VIEW "sys"."dm_resource_governor_configuration"
GO

DROP VIEW "sys"."dm_db_uncontained_entities"
GO

DROP VIEW "sys"."server_assembly_modules"
GO

DROP VIEW "sys"."default_constraints"
GO

DROP VIEW "sys"."dm_db_task_space_usage"
GO

DROP VIEW "sys"."dm_server_services"
GO

DROP VIEW "sys"."database_permissions"
GO

DROP VIEW "sys"."database_principals"
GO

DROP VIEW "sys"."dm_fts_fdhosts"
GO

DROP VIEW "sys"."http_endpoints"
GO

DROP VIEW "sys"."dm_exec_cached_plans"
GO

DROP VIEW "sys"."dm_os_stacks"
GO

DROP VIEW "sys"."fulltext_index_fragments"
GO

DROP VIEW "sys"."dm_os_memory_objects"
GO

DROP VIEW "sys"."user_token"
GO

DROP VIEW "sys"."server_audits"
GO

DROP VIEW "sys"."dm_fts_outstanding_batches"
GO

DROP VIEW "sys"."dm_tran_locks"
GO

DROP VIEW "sys"."dm_fts_memory_buffers"
GO

DROP VIEW "sys"."dm_os_server_diagnostics_log_configurations"
GO

DROP VIEW "sys"."columns"
GO

DROP VIEW "sys"."key_encryptions"
GO

DROP VIEW "sys"."allocation_units"
GO

DROP VIEW "sys"."dm_os_memory_clerks"
GO

DROP VIEW "sys"."dm_os_workers"
GO

DROP VIEW "sys"."dm_exec_query_memory_grants"
GO

DROP VIEW "INFORMATION_SCHEMA"."VIEW_TABLE_USAGE"
GO

DROP VIEW "sys"."dm_logpool_hashentries"
GO

DROP VIEW "sys"."server_triggers"
GO

DROP VIEW "sys"."via_endpoints"
GO

DROP VIEW "sys"."dm_db_mirroring_connections"
GO

DROP VIEW "sys"."sysindexes"
GO

DROP VIEW "sys"."service_contracts"
GO

DROP VIEW "sys"."column_store_segments"
GO

DROP VIEW "sys"."dm_db_xtp_nonclustered_index_stats"
GO

DROP VIEW "sys"."change_tracking_tables"
GO

DROP VIEW "sys"."system_views"
GO

DROP VIEW "sys"."resource_governor_workload_groups"
GO

DROP VIEW "sys"."dm_logpool_stats"
GO

DROP VIEW "sys"."selective_xml_index_paths"
GO

DROP VIEW "sys"."dm_db_session_space_usage"
GO

DROP VIEW "sys"."extended_procedures"
GO

DROP VIEW "sys"."syscomments"
GO

DROP VIEW "sys"."conversation_priorities"
GO

DROP VIEW "sys"."dm_os_spinlock_stats"
GO

DROP VIEW "sys"."dm_os_buffer_pool_extension_configuration"
GO

DROP VIEW "sys"."dm_db_missing_index_groups"
GO

DROP VIEW "sys"."server_role_members"
GO

DROP VIEW "sys"."dm_db_xtp_transactions"
GO

DROP VIEW "sys"."selective_xml_index_namespaces"
GO

DROP VIEW "sys"."certificates"
GO

DROP VIEW "sys"."parameter_type_usages"
GO

DROP VIEW "sys"."service_queue_usages"
GO

DROP VIEW "sys"."objects"
GO

DROP VIEW "sys"."dm_db_index_usage_stats"
GO

DROP VIEW "sys"."sysdatabases"
GO

DROP VIEW "sys"."partitions"
GO

DROP VIEW "sys"."dm_db_mirroring_auto_page_repair"
GO

DROP VIEW "sys"."dm_xe_session_targets"
GO

DROP VIEW "sys"."database_files"
GO

DROP VIEW "sys"."dm_repl_tranhash"
GO

DROP VIEW "sys"."spatial_indexes"
GO

DROP VIEW "INFORMATION_SCHEMA"."ROUTINE_COLUMNS"
GO

DROP VIEW "sys"."sequences"
GO

DROP VIEW "sys"."parameter_xml_schema_collection_usages"
GO

DROP VIEW "sys"."numbered_procedures"
GO

DROP VIEW "sys"."trace_event_bindings"
GO

DROP VIEW "sys"."column_xml_schema_collection_usages"
GO

DROP VIEW "sys"."dm_clr_loaded_assemblies"
GO

DROP VIEW "sys"."dm_resource_governor_resource_pool_volumes"
GO

DROP VIEW "sys"."dm_xe_session_event_actions"
GO

DROP VIEW "sys"."dm_db_missing_index_group_stats"
GO

DROP VIEW "sys"."key_constraints"
GO

DROP VIEW "sys"."server_principal_credentials"
GO

DROP VIEW "sys"."dm_os_memory_pools"
GO

DROP VIEW "sys"."dm_audit_class_type_map"
GO

DROP VIEW "INFORMATION_SCHEMA"."TABLE_CONSTRAINTS"
GO

DROP VIEW "sys"."dm_os_memory_cache_hash_tables"
GO

DROP VIEW "sys"."sql_modules"
GO

DROP VIEW "INFORMATION_SCHEMA"."VIEWS"
GO

DROP VIEW "sys"."dm_xtp_transaction_stats"
GO

DROP VIEW "sys"."types"
GO

DROP VIEW "sys"."dm_xe_map_values"
GO

DROP VIEW "sys"."fulltext_document_types"
GO

DROP VIEW "sys"."database_mirroring_endpoints"
GO

DROP VIEW "sys"."server_file_audits"
GO

DROP VIEW "sys"."assembly_modules"
GO

DROP VIEW "sys"."column_type_usages"
GO

DROP VIEW "sys"."system_internals_partitions"
GO

DROP VIEW "sys"."index_columns"
GO

DROP VIEW "sys"."dm_clr_tasks"
GO

DROP VIEW "sys"."synonyms"
GO

DROP VIEW "sys"."syscolumns"
GO

DROP VIEW "sys"."dm_hadr_database_replica_states"
GO

DROP VIEW "sys"."dm_xe_session_object_columns"
GO

DROP VIEW "sys"."dm_db_xtp_merge_requests"
GO

DROP VIEW "sys"."dm_filestream_non_transacted_handles"
GO

DROP VIEW "sys"."event_notifications"
GO

DROP VIEW "sys"."securable_classes"
GO

DROP VIEW "sys"."server_event_session_actions"
GO

DROP VIEW "sys"."server_event_sessions"
GO

DROP VIEW "sys"."sql_logins"
GO

DROP VIEW "sys"."system_sql_modules"
GO

DROP VIEW "sys"."availability_databases_cluster"
GO

DROP VIEW "sys"."availability_groups"
GO

DROP VIEW "sys"."dm_hadr_cluster_networks"
GO

DROP VIEW "sys"."database_filestream_options"
GO

DROP VIEW "sys"."xml_schema_types"
GO

DROP VIEW "sys"."configurations"
GO

DROP VIEW "sys"."services"
GO

DROP VIEW "sys"."dm_clr_appdomains"
GO

DROP VIEW "sys"."dm_exec_query_transformation_stats"
GO

DROP VIEW "sys"."backup_devices"
GO

DROP VIEW "sys"."dm_resource_governor_resource_pools"
GO

DROP VIEW "sys"."destination_data_spaces"
GO

DROP VIEW "sys"."triggers"
GO

DROP VIEW "sys"."sysoledbusers"
GO

DROP VIEW "sys"."dm_db_partition_stats"
GO

DROP VIEW "INFORMATION_SCHEMA"."PARAMETERS"
GO

DROP VIEW "sys"."internal_tables"
GO

DROP VIEW "sys"."xml_schema_wildcard_namespaces"
GO

DROP VIEW "sys"."dm_db_missing_index_details"
GO

DROP VIEW "sys"."fulltext_languages"
GO

DROP VIEW "sys"."partition_schemes"
GO

DROP VIEW "sys"."syscursorrefs"
GO

DROP VIEW "sys"."registered_search_property_lists"
GO

DROP VIEW "sys"."dm_cdc_log_scan_sessions"
GO

DROP VIEW "sys"."foreign_key_columns"
GO

DROP VIEW "sys"."conversation_groups"
GO

DROP VIEW "sys"."dm_tran_database_transactions"
GO

DROP VIEW "sys"."xml_schema_elements"
GO

DROP VIEW "sys"."dm_resource_governor_resource_pool_affinity"
GO

DROP VIEW "sys"."dm_exec_connections"
GO

DROP VIEW "sys"."database_audit_specifications"
GO

DROP VIEW "sys"."dm_db_fts_index_physical_stats"
GO

DROP VIEW "sys"."dm_os_hosts"
GO

DROP VIEW "sys"."syslanguages"
GO

DROP VIEW "sys"."asymmetric_keys"
GO

DROP VIEW "sys"."database_audit_specification_details"
GO

DROP VIEW "INFORMATION_SCHEMA"."VIEW_COLUMN_USAGE"
GO

DROP VIEW "INFORMATION_SCHEMA"."COLUMN_PRIVILEGES"
GO

DROP VIEW "sys"."dm_os_wait_stats"
GO

DROP VIEW "sys"."xml_indexes"
GO

DROP VIEW "sys"."dm_hadr_availability_group_states"
GO

DROP VIEW "sys"."server_permissions"
GO

DROP VIEW "sys"."remote_logins"
GO

DROP VIEW "sys"."sysfulltextcatalogs"
GO

DROP VIEW "sys"."column_store_row_groups"
GO

DROP VIEW "sys"."system_objects"
GO

DROP VIEW "sys"."syscacheobjects"
GO

DROP VIEW "sys"."dm_db_xtp_index_stats"
GO

DROP VIEW "INFORMATION_SCHEMA"."ROUTINES"
GO

DROP VIEW "sys"."dm_database_encryption_keys"
GO

DROP VIEW "sys"."dm_os_memory_node_access_stats"
GO

DROP VIEW "sys"."sysopentapes"
GO

DROP VIEW "sys"."fulltext_system_stopwords"
GO

DROP VIEW "sys"."dm_xtp_system_memory_consumers"
GO

DROP VIEW "sys"."dm_hadr_availability_replica_states"
GO

DROP VIEW "sys"."hash_indexes"
GO

DROP VIEW "sys"."trace_columns"
GO

DROP VIEW "sys"."dm_broker_connections"
GO

DROP VIEW "sys"."type_assembly_usages"
GO

DROP VIEW "sys"."dm_filestream_file_io_handles"
GO

DROP VIEW "sys"."availability_read_only_routing_lists"
GO

DROP VIEW "sys"."dm_xe_object_columns"
GO

DROP VIEW "sys"."dm_hadr_availability_replica_cluster_nodes"
GO

DROP VIEW "sys"."dm_db_xtp_table_memory_stats"
GO

DROP VIEW "sys"."servers"
GO

DROP VIEW "sys"."database_role_members"
GO

DROP VIEW "sys"."partition_range_values"
GO

DROP VIEW "sys"."assembly_references"
GO

DROP VIEW "sys"."dm_db_script_level"
GO

DROP VIEW "sys"."syscursors"
GO

DROP VIEW "INFORMATION_SCHEMA"."DOMAIN_CONSTRAINTS"
GO

DROP VIEW "sys"."cryptographic_providers"
GO

DROP VIEW "sys"."trace_events"
GO

DROP VIEW "sys"."identity_columns"
GO

DROP VIEW "sys"."assembly_files"
GO

DROP VIEW "sys"."sysindexkeys"
GO

DROP VIEW "sys"."dm_os_memory_cache_entries"
GO

DROP VIEW "sys"."sql_dependencies"
GO

DROP VIEW "sys"."dm_tran_current_transaction"
GO

DROP VIEW "sys"."filegroups"
GO

DROP VIEW "sys"."service_queues"
GO

DROP VIEW "sys"."assemblies"
GO

DROP VIEW "sys"."traces"
GO

DROP TABLE "sys"."trace_xe_event_map"
GO

DROP TABLE "dbo"."SanPham"
GO

DROP TABLE "dbo"."DanhMuc"
GO

DROP TABLE "sys"."trace_xe_action_map"
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE "sys"."trace_xe_event_map" (
	"trace_event_id" SMALLINT NOT NULL,
	"package_name" null NOT NULL,
	"xe_event_name" null NOT NULL
)
GO

CREATE TABLE "dbo"."SanPham" (
	"MaSP" null NOT NULL,
	"TenSP" null NOT NULL,
	"GiaSP" INT NOT NULL,
	"SoLuong" INT NOT NULL,
	"MoTa" null,
	"MaDM" null,
	CONSTRAINT "PK__SanPham__2725081C14C65FF6" PRIMARY KEY ("MaSP") WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)

)
GO

CREATE TABLE "dbo"."DanhMuc" (
	"MaDm" null NOT NULL,
	"TenDM" null NOT NULL,
	CONSTRAINT "PK__DanhMuc__2725864E1636F7F7" PRIMARY KEY ("MaDm") WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)

)
GO

CREATE TABLE "sys"."trace_xe_action_map" (
	"trace_column_id" SMALLINT NOT NULL,
	"package_name" null NOT NULL,
	"xe_action_name" null NOT NULL
)
GO

SET ANSI_PADDING OFF
GO

