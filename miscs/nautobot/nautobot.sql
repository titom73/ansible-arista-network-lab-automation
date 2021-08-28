--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO nautobot;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO nautobot;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO nautobot;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO nautobot;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO nautobot;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO nautobot;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.auth_user (
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    id uuid NOT NULL,
    config_data jsonb NOT NULL
);


ALTER TABLE public.auth_user OWNER TO nautobot;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id uuid NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO nautobot;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO nautobot;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id uuid NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO nautobot;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO nautobot;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: circuits_circuit; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.circuits_circuit (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    cid character varying(100) NOT NULL,
    install_date date,
    commit_rate integer,
    description character varying(200) NOT NULL,
    comments text NOT NULL,
    provider_id uuid NOT NULL,
    status_id uuid,
    tenant_id uuid,
    type_id uuid NOT NULL,
    CONSTRAINT circuits_circuit_commit_rate_check CHECK ((commit_rate >= 0))
);


ALTER TABLE public.circuits_circuit OWNER TO nautobot;

--
-- Name: circuits_circuittermination; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.circuits_circuittermination (
    id uuid NOT NULL,
    _cable_peer_id uuid,
    term_side character varying(1) NOT NULL,
    port_speed integer,
    upstream_speed integer,
    xconnect_id character varying(50) NOT NULL,
    pp_info character varying(100) NOT NULL,
    description character varying(200) NOT NULL,
    _cable_peer_type_id integer,
    _path_id uuid,
    cable_id uuid,
    circuit_id uuid NOT NULL,
    site_id uuid NOT NULL,
    CONSTRAINT circuits_circuittermination_port_speed_check CHECK ((port_speed >= 0)),
    CONSTRAINT circuits_circuittermination_upstream_speed_check CHECK ((upstream_speed >= 0))
);


ALTER TABLE public.circuits_circuittermination OWNER TO nautobot;

--
-- Name: circuits_circuittype; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.circuits_circuittype (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    description character varying(200) NOT NULL
);


ALTER TABLE public.circuits_circuittype OWNER TO nautobot;

--
-- Name: circuits_provider; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.circuits_provider (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    asn bigint,
    account character varying(30) NOT NULL,
    portal_url character varying(200) NOT NULL,
    noc_contact text NOT NULL,
    admin_contact text NOT NULL,
    comments text NOT NULL
);


ALTER TABLE public.circuits_provider OWNER TO nautobot;

--
-- Name: dcim_cable; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_cable (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    termination_a_id uuid NOT NULL,
    termination_b_id uuid NOT NULL,
    type character varying(50) NOT NULL,
    label character varying(100) NOT NULL,
    color character varying(6) NOT NULL,
    length smallint,
    length_unit character varying(50) NOT NULL,
    _abs_length numeric(10,4),
    _termination_a_device_id uuid,
    _termination_b_device_id uuid,
    status_id uuid,
    termination_a_type_id integer NOT NULL,
    termination_b_type_id integer NOT NULL,
    CONSTRAINT dcim_cable_length_check CHECK ((length >= 0))
);


ALTER TABLE public.dcim_cable OWNER TO nautobot;

--
-- Name: dcim_cablepath; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_cablepath (
    id uuid NOT NULL,
    origin_id uuid NOT NULL,
    destination_id uuid,
    path jsonb NOT NULL,
    is_active boolean NOT NULL,
    is_split boolean NOT NULL,
    destination_type_id integer,
    origin_type_id integer NOT NULL
);


ALTER TABLE public.dcim_cablepath OWNER TO nautobot;

--
-- Name: dcim_consoleport; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_consoleport (
    id uuid NOT NULL,
    _custom_field_data jsonb NOT NULL,
    name character varying(64) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    _cable_peer_id uuid,
    type character varying(50) NOT NULL,
    _cable_peer_type_id integer,
    _path_id uuid,
    cable_id uuid,
    device_id uuid NOT NULL
);


ALTER TABLE public.dcim_consoleport OWNER TO nautobot;

--
-- Name: dcim_consoleporttemplate; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_consoleporttemplate (
    id uuid NOT NULL,
    _custom_field_data jsonb NOT NULL,
    name character varying(64) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    type character varying(50) NOT NULL,
    device_type_id uuid NOT NULL
);


ALTER TABLE public.dcim_consoleporttemplate OWNER TO nautobot;

--
-- Name: dcim_consoleserverport; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_consoleserverport (
    id uuid NOT NULL,
    _custom_field_data jsonb NOT NULL,
    name character varying(64) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    _cable_peer_id uuid,
    type character varying(50) NOT NULL,
    _cable_peer_type_id integer,
    _path_id uuid,
    cable_id uuid,
    device_id uuid NOT NULL
);


ALTER TABLE public.dcim_consoleserverport OWNER TO nautobot;

--
-- Name: dcim_consoleserverporttemplate; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_consoleserverporttemplate (
    id uuid NOT NULL,
    _custom_field_data jsonb NOT NULL,
    name character varying(64) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    type character varying(50) NOT NULL,
    device_type_id uuid NOT NULL
);


ALTER TABLE public.dcim_consoleserverporttemplate OWNER TO nautobot;

--
-- Name: dcim_device; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_device (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    local_context_data jsonb,
    local_context_data_owner_object_id uuid,
    name character varying(64),
    _name character varying(100),
    serial character varying(50) NOT NULL,
    asset_tag character varying(50),
    "position" smallint,
    face character varying(50) NOT NULL,
    vc_position smallint,
    vc_priority smallint,
    comments text NOT NULL,
    cluster_id uuid,
    device_role_id uuid NOT NULL,
    device_type_id uuid NOT NULL,
    local_context_data_owner_content_type_id integer,
    platform_id uuid,
    primary_ip4_id uuid,
    primary_ip6_id uuid,
    rack_id uuid,
    site_id uuid NOT NULL,
    status_id uuid,
    tenant_id uuid,
    virtual_chassis_id uuid,
    CONSTRAINT dcim_device_position_check CHECK (("position" >= 0)),
    CONSTRAINT dcim_device_vc_position_check CHECK ((vc_position >= 0)),
    CONSTRAINT dcim_device_vc_priority_check CHECK ((vc_priority >= 0))
);


ALTER TABLE public.dcim_device OWNER TO nautobot;

--
-- Name: dcim_devicebay; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_devicebay (
    id uuid NOT NULL,
    _custom_field_data jsonb NOT NULL,
    name character varying(64) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    device_id uuid NOT NULL,
    installed_device_id uuid
);


ALTER TABLE public.dcim_devicebay OWNER TO nautobot;

--
-- Name: dcim_devicebaytemplate; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_devicebaytemplate (
    id uuid NOT NULL,
    _custom_field_data jsonb NOT NULL,
    name character varying(64) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    device_type_id uuid NOT NULL
);


ALTER TABLE public.dcim_devicebaytemplate OWNER TO nautobot;

--
-- Name: dcim_devicerole; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_devicerole (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    color character varying(6) NOT NULL,
    vm_role boolean NOT NULL,
    description character varying(200) NOT NULL
);


ALTER TABLE public.dcim_devicerole OWNER TO nautobot;

--
-- Name: dcim_devicetype; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_devicetype (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    model character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    part_number character varying(50) NOT NULL,
    u_height smallint NOT NULL,
    is_full_depth boolean NOT NULL,
    subdevice_role character varying(50) NOT NULL,
    front_image character varying(100) NOT NULL,
    rear_image character varying(100) NOT NULL,
    comments text NOT NULL,
    manufacturer_id uuid NOT NULL,
    CONSTRAINT dcim_devicetype_u_height_check CHECK ((u_height >= 0))
);


ALTER TABLE public.dcim_devicetype OWNER TO nautobot;

--
-- Name: dcim_frontport; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_frontport (
    id uuid NOT NULL,
    _custom_field_data jsonb NOT NULL,
    name character varying(64) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    _cable_peer_id uuid,
    type character varying(50) NOT NULL,
    rear_port_position smallint NOT NULL,
    _cable_peer_type_id integer,
    cable_id uuid,
    device_id uuid NOT NULL,
    rear_port_id uuid NOT NULL,
    CONSTRAINT dcim_frontport_rear_port_position_check CHECK ((rear_port_position >= 0))
);


ALTER TABLE public.dcim_frontport OWNER TO nautobot;

--
-- Name: dcim_frontporttemplate; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_frontporttemplate (
    id uuid NOT NULL,
    _custom_field_data jsonb NOT NULL,
    name character varying(64) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    type character varying(50) NOT NULL,
    rear_port_position smallint NOT NULL,
    device_type_id uuid NOT NULL,
    rear_port_id uuid NOT NULL,
    CONSTRAINT dcim_frontporttemplate_rear_port_position_check CHECK ((rear_port_position >= 0))
);


ALTER TABLE public.dcim_frontporttemplate OWNER TO nautobot;

--
-- Name: dcim_interface; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_interface (
    id uuid NOT NULL,
    _custom_field_data jsonb NOT NULL,
    name character varying(64) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    _cable_peer_id uuid,
    enabled boolean NOT NULL,
    mac_address character varying(18),
    mtu integer,
    mode character varying(50) NOT NULL,
    _name character varying(100) NOT NULL,
    type character varying(50) NOT NULL,
    mgmt_only boolean NOT NULL,
    _cable_peer_type_id integer,
    _path_id uuid,
    cable_id uuid,
    device_id uuid NOT NULL,
    lag_id uuid,
    untagged_vlan_id uuid,
    CONSTRAINT dcim_interface_mtu_check CHECK ((mtu >= 0))
);


ALTER TABLE public.dcim_interface OWNER TO nautobot;

--
-- Name: dcim_interface_tagged_vlans; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_interface_tagged_vlans (
    id integer NOT NULL,
    interface_id uuid NOT NULL,
    vlan_id uuid NOT NULL
);


ALTER TABLE public.dcim_interface_tagged_vlans OWNER TO nautobot;

--
-- Name: dcim_interface_tagged_vlans_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.dcim_interface_tagged_vlans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dcim_interface_tagged_vlans_id_seq OWNER TO nautobot;

--
-- Name: dcim_interface_tagged_vlans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.dcim_interface_tagged_vlans_id_seq OWNED BY public.dcim_interface_tagged_vlans.id;


--
-- Name: dcim_interfacetemplate; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_interfacetemplate (
    id uuid NOT NULL,
    _custom_field_data jsonb NOT NULL,
    name character varying(64) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    _name character varying(100) NOT NULL,
    type character varying(50) NOT NULL,
    mgmt_only boolean NOT NULL,
    device_type_id uuid NOT NULL
);


ALTER TABLE public.dcim_interfacetemplate OWNER TO nautobot;

--
-- Name: dcim_inventoryitem; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_inventoryitem (
    id uuid NOT NULL,
    _custom_field_data jsonb NOT NULL,
    name character varying(64) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    part_id character varying(50) NOT NULL,
    serial character varying(50) NOT NULL,
    asset_tag character varying(50),
    discovered boolean NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    device_id uuid NOT NULL,
    manufacturer_id uuid,
    parent_id uuid,
    CONSTRAINT dcim_inventoryitem_level_check CHECK ((level >= 0)),
    CONSTRAINT dcim_inventoryitem_lft_check CHECK ((lft >= 0)),
    CONSTRAINT dcim_inventoryitem_rght_check CHECK ((rght >= 0)),
    CONSTRAINT dcim_inventoryitem_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.dcim_inventoryitem OWNER TO nautobot;

--
-- Name: dcim_manufacturer; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_manufacturer (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    description character varying(200) NOT NULL
);


ALTER TABLE public.dcim_manufacturer OWNER TO nautobot;

--
-- Name: dcim_platform; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_platform (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    napalm_driver character varying(50) NOT NULL,
    napalm_args jsonb,
    description character varying(200) NOT NULL,
    manufacturer_id uuid
);


ALTER TABLE public.dcim_platform OWNER TO nautobot;

--
-- Name: dcim_powerfeed; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_powerfeed (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    _cable_peer_id uuid,
    name character varying(100) NOT NULL,
    type character varying(50) NOT NULL,
    supply character varying(50) NOT NULL,
    phase character varying(50) NOT NULL,
    voltage smallint NOT NULL,
    amperage smallint NOT NULL,
    max_utilization smallint NOT NULL,
    available_power integer NOT NULL,
    comments text NOT NULL,
    _cable_peer_type_id integer,
    _path_id uuid,
    cable_id uuid,
    power_panel_id uuid NOT NULL,
    rack_id uuid,
    status_id uuid,
    CONSTRAINT dcim_powerfeed_amperage_check CHECK ((amperage >= 0)),
    CONSTRAINT dcim_powerfeed_available_power_check CHECK ((available_power >= 0)),
    CONSTRAINT dcim_powerfeed_max_utilization_check CHECK ((max_utilization >= 0))
);


ALTER TABLE public.dcim_powerfeed OWNER TO nautobot;

--
-- Name: dcim_poweroutlet; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_poweroutlet (
    id uuid NOT NULL,
    _custom_field_data jsonb NOT NULL,
    name character varying(64) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    _cable_peer_id uuid,
    type character varying(50) NOT NULL,
    feed_leg character varying(50) NOT NULL,
    _cable_peer_type_id integer,
    _path_id uuid,
    cable_id uuid,
    device_id uuid NOT NULL,
    power_port_id uuid
);


ALTER TABLE public.dcim_poweroutlet OWNER TO nautobot;

--
-- Name: dcim_poweroutlettemplate; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_poweroutlettemplate (
    id uuid NOT NULL,
    _custom_field_data jsonb NOT NULL,
    name character varying(64) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    type character varying(50) NOT NULL,
    feed_leg character varying(50) NOT NULL,
    device_type_id uuid NOT NULL,
    power_port_id uuid
);


ALTER TABLE public.dcim_poweroutlettemplate OWNER TO nautobot;

--
-- Name: dcim_powerpanel; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_powerpanel (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    rack_group_id uuid,
    site_id uuid NOT NULL
);


ALTER TABLE public.dcim_powerpanel OWNER TO nautobot;

--
-- Name: dcim_powerport; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_powerport (
    id uuid NOT NULL,
    _custom_field_data jsonb NOT NULL,
    name character varying(64) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    _cable_peer_id uuid,
    type character varying(50) NOT NULL,
    maximum_draw smallint,
    allocated_draw smallint,
    _cable_peer_type_id integer,
    _path_id uuid,
    cable_id uuid,
    device_id uuid NOT NULL,
    CONSTRAINT dcim_powerport_allocated_draw_check CHECK ((allocated_draw >= 0)),
    CONSTRAINT dcim_powerport_maximum_draw_check CHECK ((maximum_draw >= 0))
);


ALTER TABLE public.dcim_powerport OWNER TO nautobot;

--
-- Name: dcim_powerporttemplate; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_powerporttemplate (
    id uuid NOT NULL,
    _custom_field_data jsonb NOT NULL,
    name character varying(64) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    type character varying(50) NOT NULL,
    maximum_draw smallint,
    allocated_draw smallint,
    device_type_id uuid NOT NULL,
    CONSTRAINT dcim_powerporttemplate_allocated_draw_check CHECK ((allocated_draw >= 0)),
    CONSTRAINT dcim_powerporttemplate_maximum_draw_check CHECK ((maximum_draw >= 0))
);


ALTER TABLE public.dcim_powerporttemplate OWNER TO nautobot;

--
-- Name: dcim_rack; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_rack (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    _name character varying(100) NOT NULL,
    facility_id character varying(50),
    serial character varying(50) NOT NULL,
    asset_tag character varying(50),
    type character varying(50) NOT NULL,
    width smallint NOT NULL,
    u_height smallint NOT NULL,
    desc_units boolean NOT NULL,
    outer_width smallint,
    outer_depth smallint,
    outer_unit character varying(50) NOT NULL,
    comments text NOT NULL,
    group_id uuid,
    role_id uuid,
    site_id uuid NOT NULL,
    status_id uuid,
    tenant_id uuid,
    CONSTRAINT dcim_rack_outer_depth_check CHECK ((outer_depth >= 0)),
    CONSTRAINT dcim_rack_outer_width_check CHECK ((outer_width >= 0)),
    CONSTRAINT dcim_rack_u_height_check CHECK ((u_height >= 0)),
    CONSTRAINT dcim_rack_width_check CHECK ((width >= 0))
);


ALTER TABLE public.dcim_rack OWNER TO nautobot;

--
-- Name: dcim_rackgroup; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_rackgroup (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    description character varying(200) NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    parent_id uuid,
    site_id uuid NOT NULL,
    CONSTRAINT dcim_rackgroup_level_check CHECK ((level >= 0)),
    CONSTRAINT dcim_rackgroup_lft_check CHECK ((lft >= 0)),
    CONSTRAINT dcim_rackgroup_rght_check CHECK ((rght >= 0)),
    CONSTRAINT dcim_rackgroup_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.dcim_rackgroup OWNER TO nautobot;

--
-- Name: dcim_rackreservation; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_rackreservation (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    units jsonb NOT NULL,
    description character varying(200) NOT NULL,
    rack_id uuid NOT NULL,
    tenant_id uuid,
    user_id uuid NOT NULL
);


ALTER TABLE public.dcim_rackreservation OWNER TO nautobot;

--
-- Name: dcim_rackrole; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_rackrole (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    color character varying(6) NOT NULL,
    description character varying(200) NOT NULL
);


ALTER TABLE public.dcim_rackrole OWNER TO nautobot;

--
-- Name: dcim_rearport; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_rearport (
    id uuid NOT NULL,
    _custom_field_data jsonb NOT NULL,
    name character varying(64) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    _cable_peer_id uuid,
    type character varying(50) NOT NULL,
    positions smallint NOT NULL,
    _cable_peer_type_id integer,
    cable_id uuid,
    device_id uuid NOT NULL,
    CONSTRAINT dcim_rearport_positions_check CHECK ((positions >= 0))
);


ALTER TABLE public.dcim_rearport OWNER TO nautobot;

--
-- Name: dcim_rearporttemplate; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_rearporttemplate (
    id uuid NOT NULL,
    _custom_field_data jsonb NOT NULL,
    name character varying(64) NOT NULL,
    _name character varying(100) NOT NULL,
    label character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    type character varying(50) NOT NULL,
    positions smallint NOT NULL,
    device_type_id uuid NOT NULL,
    CONSTRAINT dcim_rearporttemplate_positions_check CHECK ((positions >= 0))
);


ALTER TABLE public.dcim_rearporttemplate OWNER TO nautobot;

--
-- Name: dcim_region; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_region (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    description character varying(200) NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    parent_id uuid,
    CONSTRAINT dcim_region_level_check CHECK ((level >= 0)),
    CONSTRAINT dcim_region_lft_check CHECK ((lft >= 0)),
    CONSTRAINT dcim_region_rght_check CHECK ((rght >= 0)),
    CONSTRAINT dcim_region_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.dcim_region OWNER TO nautobot;

--
-- Name: dcim_site; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_site (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    _name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    facility character varying(50) NOT NULL,
    asn bigint,
    time_zone character varying(63) NOT NULL,
    description character varying(200) NOT NULL,
    physical_address character varying(200) NOT NULL,
    shipping_address character varying(200) NOT NULL,
    latitude numeric(8,6),
    longitude numeric(9,6),
    contact_name character varying(50) NOT NULL,
    contact_phone character varying(20) NOT NULL,
    contact_email character varying(254) NOT NULL,
    comments text NOT NULL,
    region_id uuid,
    status_id uuid,
    tenant_id uuid
);


ALTER TABLE public.dcim_site OWNER TO nautobot;

--
-- Name: dcim_virtualchassis; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.dcim_virtualchassis (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(64) NOT NULL,
    domain character varying(30) NOT NULL,
    master_id uuid
);


ALTER TABLE public.dcim_virtualchassis OWNER TO nautobot;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id uuid NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO nautobot;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO nautobot;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO nautobot;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO nautobot;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO nautobot;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO nautobot;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO nautobot;

--
-- Name: extras_configcontext; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_configcontext (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    name character varying(100) NOT NULL,
    owner_object_id uuid,
    weight smallint NOT NULL,
    description character varying(200) NOT NULL,
    is_active boolean NOT NULL,
    data jsonb NOT NULL,
    owner_content_type_id integer,
    CONSTRAINT extras_configcontext_weight_check CHECK ((weight >= 0))
);


ALTER TABLE public.extras_configcontext OWNER TO nautobot;

--
-- Name: extras_configcontext_cluster_groups; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_configcontext_cluster_groups (
    id integer NOT NULL,
    configcontext_id uuid NOT NULL,
    clustergroup_id uuid NOT NULL
);


ALTER TABLE public.extras_configcontext_cluster_groups OWNER TO nautobot;

--
-- Name: extras_configcontext_cluster_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.extras_configcontext_cluster_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extras_configcontext_cluster_groups_id_seq OWNER TO nautobot;

--
-- Name: extras_configcontext_cluster_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.extras_configcontext_cluster_groups_id_seq OWNED BY public.extras_configcontext_cluster_groups.id;


--
-- Name: extras_configcontext_clusters; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_configcontext_clusters (
    id integer NOT NULL,
    configcontext_id uuid NOT NULL,
    cluster_id uuid NOT NULL
);


ALTER TABLE public.extras_configcontext_clusters OWNER TO nautobot;

--
-- Name: extras_configcontext_clusters_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.extras_configcontext_clusters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extras_configcontext_clusters_id_seq OWNER TO nautobot;

--
-- Name: extras_configcontext_clusters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.extras_configcontext_clusters_id_seq OWNED BY public.extras_configcontext_clusters.id;


--
-- Name: extras_configcontext_platforms; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_configcontext_platforms (
    id integer NOT NULL,
    configcontext_id uuid NOT NULL,
    platform_id uuid NOT NULL
);


ALTER TABLE public.extras_configcontext_platforms OWNER TO nautobot;

--
-- Name: extras_configcontext_platforms_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.extras_configcontext_platforms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extras_configcontext_platforms_id_seq OWNER TO nautobot;

--
-- Name: extras_configcontext_platforms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.extras_configcontext_platforms_id_seq OWNED BY public.extras_configcontext_platforms.id;


--
-- Name: extras_configcontext_regions; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_configcontext_regions (
    id integer NOT NULL,
    configcontext_id uuid NOT NULL,
    region_id uuid NOT NULL
);


ALTER TABLE public.extras_configcontext_regions OWNER TO nautobot;

--
-- Name: extras_configcontext_regions_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.extras_configcontext_regions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extras_configcontext_regions_id_seq OWNER TO nautobot;

--
-- Name: extras_configcontext_regions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.extras_configcontext_regions_id_seq OWNED BY public.extras_configcontext_regions.id;


--
-- Name: extras_configcontext_roles; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_configcontext_roles (
    id integer NOT NULL,
    configcontext_id uuid NOT NULL,
    devicerole_id uuid NOT NULL
);


ALTER TABLE public.extras_configcontext_roles OWNER TO nautobot;

--
-- Name: extras_configcontext_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.extras_configcontext_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extras_configcontext_roles_id_seq OWNER TO nautobot;

--
-- Name: extras_configcontext_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.extras_configcontext_roles_id_seq OWNED BY public.extras_configcontext_roles.id;


--
-- Name: extras_configcontext_sites; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_configcontext_sites (
    id integer NOT NULL,
    configcontext_id uuid NOT NULL,
    site_id uuid NOT NULL
);


ALTER TABLE public.extras_configcontext_sites OWNER TO nautobot;

--
-- Name: extras_configcontext_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.extras_configcontext_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extras_configcontext_sites_id_seq OWNER TO nautobot;

--
-- Name: extras_configcontext_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.extras_configcontext_sites_id_seq OWNED BY public.extras_configcontext_sites.id;


--
-- Name: extras_configcontext_tags; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_configcontext_tags (
    id integer NOT NULL,
    configcontext_id uuid NOT NULL,
    tag_id uuid NOT NULL
);


ALTER TABLE public.extras_configcontext_tags OWNER TO nautobot;

--
-- Name: extras_configcontext_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.extras_configcontext_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extras_configcontext_tags_id_seq OWNER TO nautobot;

--
-- Name: extras_configcontext_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.extras_configcontext_tags_id_seq OWNED BY public.extras_configcontext_tags.id;


--
-- Name: extras_configcontext_tenant_groups; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_configcontext_tenant_groups (
    id integer NOT NULL,
    configcontext_id uuid NOT NULL,
    tenantgroup_id uuid NOT NULL
);


ALTER TABLE public.extras_configcontext_tenant_groups OWNER TO nautobot;

--
-- Name: extras_configcontext_tenant_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.extras_configcontext_tenant_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extras_configcontext_tenant_groups_id_seq OWNER TO nautobot;

--
-- Name: extras_configcontext_tenant_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.extras_configcontext_tenant_groups_id_seq OWNED BY public.extras_configcontext_tenant_groups.id;


--
-- Name: extras_configcontext_tenants; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_configcontext_tenants (
    id integer NOT NULL,
    configcontext_id uuid NOT NULL,
    tenant_id uuid NOT NULL
);


ALTER TABLE public.extras_configcontext_tenants OWNER TO nautobot;

--
-- Name: extras_configcontext_tenants_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.extras_configcontext_tenants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extras_configcontext_tenants_id_seq OWNER TO nautobot;

--
-- Name: extras_configcontext_tenants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.extras_configcontext_tenants_id_seq OWNED BY public.extras_configcontext_tenants.id;


--
-- Name: extras_customfield; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_customfield (
    id uuid NOT NULL,
    type character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    label character varying(50) NOT NULL,
    description character varying(200) NOT NULL,
    required boolean NOT NULL,
    filter_logic character varying(50) NOT NULL,
    "default" jsonb,
    weight smallint NOT NULL,
    validation_minimum integer,
    validation_maximum integer,
    validation_regex character varying(500) NOT NULL,
    CONSTRAINT extras_customfield_validation_maximum_check CHECK ((validation_maximum >= 0)),
    CONSTRAINT extras_customfield_validation_minimum_check CHECK ((validation_minimum >= 0)),
    CONSTRAINT extras_customfield_weight_check CHECK ((weight >= 0))
);


ALTER TABLE public.extras_customfield OWNER TO nautobot;

--
-- Name: extras_customfield_content_types; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_customfield_content_types (
    id integer NOT NULL,
    customfield_id uuid NOT NULL,
    contenttype_id integer NOT NULL
);


ALTER TABLE public.extras_customfield_content_types OWNER TO nautobot;

--
-- Name: extras_customfield_content_types_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.extras_customfield_content_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extras_customfield_content_types_id_seq OWNER TO nautobot;

--
-- Name: extras_customfield_content_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.extras_customfield_content_types_id_seq OWNED BY public.extras_customfield_content_types.id;


--
-- Name: extras_customfieldchoice; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_customfieldchoice (
    id uuid NOT NULL,
    value character varying(100) NOT NULL,
    weight smallint NOT NULL,
    field_id uuid NOT NULL,
    CONSTRAINT extras_customfieldchoice_weight_check CHECK ((weight >= 0))
);


ALTER TABLE public.extras_customfieldchoice OWNER TO nautobot;

--
-- Name: extras_customlink; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_customlink (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    name character varying(100) NOT NULL,
    text character varying(500) NOT NULL,
    target_url character varying(500) NOT NULL,
    weight smallint NOT NULL,
    group_name character varying(50) NOT NULL,
    button_class character varying(30) NOT NULL,
    new_window boolean NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT extras_customlink_weight_check CHECK ((weight >= 0))
);


ALTER TABLE public.extras_customlink OWNER TO nautobot;

--
-- Name: extras_exporttemplate; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_exporttemplate (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    owner_object_id uuid,
    name character varying(100) NOT NULL,
    description character varying(200) NOT NULL,
    template_code text NOT NULL,
    mime_type character varying(50) NOT NULL,
    file_extension character varying(15) NOT NULL,
    content_type_id integer NOT NULL,
    owner_content_type_id integer
);


ALTER TABLE public.extras_exporttemplate OWNER TO nautobot;

--
-- Name: extras_gitrepository; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_gitrepository (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    remote_url character varying(255) NOT NULL,
    branch character varying(64) NOT NULL,
    current_head character varying(48) NOT NULL,
    _token bytea NOT NULL,
    username character varying(64) NOT NULL,
    provided_contents jsonb NOT NULL
);


ALTER TABLE public.extras_gitrepository OWNER TO nautobot;

--
-- Name: extras_imageattachment; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_imageattachment (
    id uuid NOT NULL,
    object_id uuid NOT NULL,
    image character varying(100) NOT NULL,
    image_height smallint NOT NULL,
    image_width smallint NOT NULL,
    name character varying(50) NOT NULL,
    created timestamp with time zone NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT extras_imageattachment_image_height_check CHECK ((image_height >= 0)),
    CONSTRAINT extras_imageattachment_image_width_check CHECK ((image_width >= 0))
);


ALTER TABLE public.extras_imageattachment OWNER TO nautobot;

--
-- Name: extras_jobresult; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_jobresult (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    created timestamp with time zone NOT NULL,
    completed timestamp with time zone,
    status character varying(30) NOT NULL,
    data jsonb,
    job_id uuid NOT NULL,
    obj_type_id integer NOT NULL,
    user_id uuid
);


ALTER TABLE public.extras_jobresult OWNER TO nautobot;

--
-- Name: extras_objectchange; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_objectchange (
    id uuid NOT NULL,
    "time" timestamp with time zone NOT NULL,
    user_name character varying(150) NOT NULL,
    request_id uuid NOT NULL,
    action character varying(50) NOT NULL,
    changed_object_id uuid NOT NULL,
    related_object_id uuid,
    object_repr character varying(200) NOT NULL,
    object_data jsonb NOT NULL,
    changed_object_type_id integer NOT NULL,
    related_object_type_id integer,
    user_id uuid
);


ALTER TABLE public.extras_objectchange OWNER TO nautobot;

--
-- Name: extras_relationship; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_relationship (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    description character varying(200) NOT NULL,
    type character varying(50) NOT NULL,
    source_label character varying(50) NOT NULL,
    source_hidden boolean NOT NULL,
    source_filter jsonb,
    destination_label character varying(50) NOT NULL,
    destination_hidden boolean NOT NULL,
    destination_filter jsonb,
    destination_type_id integer NOT NULL,
    source_type_id integer NOT NULL
);


ALTER TABLE public.extras_relationship OWNER TO nautobot;

--
-- Name: extras_relationshipassociation; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_relationshipassociation (
    id uuid NOT NULL,
    source_id uuid NOT NULL,
    destination_id uuid NOT NULL,
    destination_type_id integer NOT NULL,
    relationship_id uuid NOT NULL,
    source_type_id integer NOT NULL
);


ALTER TABLE public.extras_relationshipassociation OWNER TO nautobot;

--
-- Name: extras_status; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_status (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(50) NOT NULL,
    color character varying(6) NOT NULL,
    slug character varying(50) NOT NULL,
    description character varying(200) NOT NULL
);


ALTER TABLE public.extras_status OWNER TO nautobot;

--
-- Name: extras_status_content_types; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_status_content_types (
    id integer NOT NULL,
    status_id uuid NOT NULL,
    contenttype_id integer NOT NULL
);


ALTER TABLE public.extras_status_content_types OWNER TO nautobot;

--
-- Name: extras_status_content_types_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.extras_status_content_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extras_status_content_types_id_seq OWNER TO nautobot;

--
-- Name: extras_status_content_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.extras_status_content_types_id_seq OWNED BY public.extras_status_content_types.id;


--
-- Name: extras_tag; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_tag (
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    color character varying(6) NOT NULL,
    description character varying(200) NOT NULL
);


ALTER TABLE public.extras_tag OWNER TO nautobot;

--
-- Name: extras_taggeditem; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_taggeditem (
    id uuid NOT NULL,
    object_id uuid NOT NULL,
    content_type_id integer NOT NULL,
    tag_id uuid NOT NULL
);


ALTER TABLE public.extras_taggeditem OWNER TO nautobot;

--
-- Name: extras_webhook; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_webhook (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    name character varying(150) NOT NULL,
    type_create boolean NOT NULL,
    type_update boolean NOT NULL,
    type_delete boolean NOT NULL,
    payload_url character varying(500) NOT NULL,
    enabled boolean NOT NULL,
    http_method character varying(30) NOT NULL,
    http_content_type character varying(100) NOT NULL,
    additional_headers text NOT NULL,
    body_template text NOT NULL,
    secret character varying(255) NOT NULL,
    ssl_verification boolean NOT NULL,
    ca_file_path character varying(4096)
);


ALTER TABLE public.extras_webhook OWNER TO nautobot;

--
-- Name: extras_webhook_content_types; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.extras_webhook_content_types (
    id integer NOT NULL,
    webhook_id uuid NOT NULL,
    contenttype_id integer NOT NULL
);


ALTER TABLE public.extras_webhook_content_types OWNER TO nautobot;

--
-- Name: extras_webhook_content_types_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.extras_webhook_content_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extras_webhook_content_types_id_seq OWNER TO nautobot;

--
-- Name: extras_webhook_content_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.extras_webhook_content_types_id_seq OWNED BY public.extras_webhook_content_types.id;


--
-- Name: ipam_aggregate; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.ipam_aggregate (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    network bytea NOT NULL,
    broadcast bytea NOT NULL,
    prefix_length integer NOT NULL,
    date_added date,
    description character varying(200) NOT NULL,
    rir_id uuid NOT NULL,
    tenant_id uuid
);


ALTER TABLE public.ipam_aggregate OWNER TO nautobot;

--
-- Name: ipam_ipaddress; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.ipam_ipaddress (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    host bytea NOT NULL,
    broadcast bytea NOT NULL,
    prefix_length integer NOT NULL,
    role character varying(50) NOT NULL,
    assigned_object_id uuid,
    dns_name character varying(255) NOT NULL,
    description character varying(200) NOT NULL,
    assigned_object_type_id integer,
    nat_inside_id uuid,
    status_id uuid,
    tenant_id uuid,
    vrf_id uuid
);


ALTER TABLE public.ipam_ipaddress OWNER TO nautobot;

--
-- Name: ipam_prefix; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.ipam_prefix (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    network bytea NOT NULL,
    broadcast bytea NOT NULL,
    prefix_length integer NOT NULL,
    is_pool boolean NOT NULL,
    description character varying(200) NOT NULL,
    role_id uuid,
    site_id uuid,
    status_id uuid,
    tenant_id uuid,
    vlan_id uuid,
    vrf_id uuid
);


ALTER TABLE public.ipam_prefix OWNER TO nautobot;

--
-- Name: ipam_rir; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.ipam_rir (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    is_private boolean NOT NULL,
    description character varying(200) NOT NULL
);


ALTER TABLE public.ipam_rir OWNER TO nautobot;

--
-- Name: ipam_role; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.ipam_role (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    weight smallint NOT NULL,
    description character varying(200) NOT NULL,
    CONSTRAINT ipam_role_weight_check CHECK ((weight >= 0))
);


ALTER TABLE public.ipam_role OWNER TO nautobot;

--
-- Name: ipam_routetarget; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.ipam_routetarget (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(21) NOT NULL,
    description character varying(200) NOT NULL,
    tenant_id uuid
);


ALTER TABLE public.ipam_routetarget OWNER TO nautobot;

--
-- Name: ipam_service; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.ipam_service (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    protocol character varying(50) NOT NULL,
    ports jsonb NOT NULL,
    description character varying(200) NOT NULL,
    device_id uuid,
    virtual_machine_id uuid
);


ALTER TABLE public.ipam_service OWNER TO nautobot;

--
-- Name: ipam_service_ipaddresses; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.ipam_service_ipaddresses (
    id integer NOT NULL,
    service_id uuid NOT NULL,
    ipaddress_id uuid NOT NULL
);


ALTER TABLE public.ipam_service_ipaddresses OWNER TO nautobot;

--
-- Name: ipam_service_ipaddresses_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.ipam_service_ipaddresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ipam_service_ipaddresses_id_seq OWNER TO nautobot;

--
-- Name: ipam_service_ipaddresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.ipam_service_ipaddresses_id_seq OWNED BY public.ipam_service_ipaddresses.id;


--
-- Name: ipam_vlan; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.ipam_vlan (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    vid smallint NOT NULL,
    name character varying(64) NOT NULL,
    description character varying(200) NOT NULL,
    group_id uuid,
    role_id uuid,
    site_id uuid,
    status_id uuid,
    tenant_id uuid,
    CONSTRAINT ipam_vlan_vid_check CHECK ((vid >= 0))
);


ALTER TABLE public.ipam_vlan OWNER TO nautobot;

--
-- Name: ipam_vlangroup; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.ipam_vlangroup (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    description character varying(200) NOT NULL,
    site_id uuid
);


ALTER TABLE public.ipam_vlangroup OWNER TO nautobot;

--
-- Name: ipam_vrf; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.ipam_vrf (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    rd character varying(21),
    enforce_unique boolean NOT NULL,
    description character varying(200) NOT NULL,
    tenant_id uuid
);


ALTER TABLE public.ipam_vrf OWNER TO nautobot;

--
-- Name: ipam_vrf_export_targets; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.ipam_vrf_export_targets (
    id integer NOT NULL,
    vrf_id uuid NOT NULL,
    routetarget_id uuid NOT NULL
);


ALTER TABLE public.ipam_vrf_export_targets OWNER TO nautobot;

--
-- Name: ipam_vrf_export_targets_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.ipam_vrf_export_targets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ipam_vrf_export_targets_id_seq OWNER TO nautobot;

--
-- Name: ipam_vrf_export_targets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.ipam_vrf_export_targets_id_seq OWNED BY public.ipam_vrf_export_targets.id;


--
-- Name: ipam_vrf_import_targets; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.ipam_vrf_import_targets (
    id integer NOT NULL,
    vrf_id uuid NOT NULL,
    routetarget_id uuid NOT NULL
);


ALTER TABLE public.ipam_vrf_import_targets OWNER TO nautobot;

--
-- Name: ipam_vrf_import_targets_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.ipam_vrf_import_targets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ipam_vrf_import_targets_id_seq OWNER TO nautobot;

--
-- Name: ipam_vrf_import_targets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.ipam_vrf_import_targets_id_seq OWNED BY public.ipam_vrf_import_targets.id;


--
-- Name: nautobot_device_onboarding_onboardingdevice; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.nautobot_device_onboarding_onboardingdevice (
    id uuid NOT NULL,
    enabled boolean NOT NULL,
    device_id uuid NOT NULL
);


ALTER TABLE public.nautobot_device_onboarding_onboardingdevice OWNER TO nautobot;

--
-- Name: nautobot_device_onboarding_onboardingtask; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.nautobot_device_onboarding_onboardingtask (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    ip_address character varying(255),
    device_type character varying(255),
    status character varying(255) NOT NULL,
    failed_reason character varying(255),
    message character varying(511) NOT NULL,
    port smallint NOT NULL,
    timeout smallint NOT NULL,
    created_device_id uuid,
    platform_id uuid,
    role_id uuid,
    site_id uuid,
    CONSTRAINT nautobot_device_onboarding_onboardingtask_port_check CHECK ((port >= 0)),
    CONSTRAINT nautobot_device_onboarding_onboardingtask_timeout_check CHECK ((timeout >= 0))
);


ALTER TABLE public.nautobot_device_onboarding_onboardingtask OWNER TO nautobot;

--
-- Name: social_auth_association; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.social_auth_association (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    handle character varying(255) NOT NULL,
    secret character varying(255) NOT NULL,
    issued integer NOT NULL,
    lifetime integer NOT NULL,
    assoc_type character varying(64) NOT NULL
);


ALTER TABLE public.social_auth_association OWNER TO nautobot;

--
-- Name: social_auth_association_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.social_auth_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_auth_association_id_seq OWNER TO nautobot;

--
-- Name: social_auth_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.social_auth_association_id_seq OWNED BY public.social_auth_association.id;


--
-- Name: social_auth_code; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.social_auth_code (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    code character varying(32) NOT NULL,
    verified boolean NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);


ALTER TABLE public.social_auth_code OWNER TO nautobot;

--
-- Name: social_auth_code_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.social_auth_code_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_auth_code_id_seq OWNER TO nautobot;

--
-- Name: social_auth_code_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.social_auth_code_id_seq OWNED BY public.social_auth_code.id;


--
-- Name: social_auth_nonce; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.social_auth_nonce (
    id integer NOT NULL,
    server_url character varying(255) NOT NULL,
    "timestamp" integer NOT NULL,
    salt character varying(65) NOT NULL
);


ALTER TABLE public.social_auth_nonce OWNER TO nautobot;

--
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.social_auth_nonce_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_auth_nonce_id_seq OWNER TO nautobot;

--
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.social_auth_nonce_id_seq OWNED BY public.social_auth_nonce.id;


--
-- Name: social_auth_partial; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.social_auth_partial (
    id integer NOT NULL,
    token character varying(32) NOT NULL,
    next_step smallint NOT NULL,
    backend character varying(32) NOT NULL,
    data text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    CONSTRAINT social_auth_partial_next_step_check CHECK ((next_step >= 0))
);


ALTER TABLE public.social_auth_partial OWNER TO nautobot;

--
-- Name: social_auth_partial_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.social_auth_partial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_auth_partial_id_seq OWNER TO nautobot;

--
-- Name: social_auth_partial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.social_auth_partial_id_seq OWNED BY public.social_auth_partial.id;


--
-- Name: social_auth_usersocialauth; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.social_auth_usersocialauth (
    id integer NOT NULL,
    provider character varying(32) NOT NULL,
    uid character varying(255) NOT NULL,
    extra_data text NOT NULL,
    user_id uuid NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.social_auth_usersocialauth OWNER TO nautobot;

--
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.social_auth_usersocialauth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_auth_usersocialauth_id_seq OWNER TO nautobot;

--
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.social_auth_usersocialauth_id_seq OWNED BY public.social_auth_usersocialauth.id;


--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO nautobot;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO nautobot;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO nautobot;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO nautobot;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: tenancy_tenant; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.tenancy_tenant (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    description character varying(200) NOT NULL,
    comments text NOT NULL,
    group_id uuid
);


ALTER TABLE public.tenancy_tenant OWNER TO nautobot;

--
-- Name: tenancy_tenantgroup; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.tenancy_tenantgroup (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    description character varying(200) NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    parent_id uuid,
    CONSTRAINT tenancy_tenantgroup_level_check CHECK ((level >= 0)),
    CONSTRAINT tenancy_tenantgroup_lft_check CHECK ((lft >= 0)),
    CONSTRAINT tenancy_tenantgroup_rght_check CHECK ((rght >= 0)),
    CONSTRAINT tenancy_tenantgroup_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.tenancy_tenantgroup OWNER TO nautobot;

--
-- Name: users_objectpermission; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.users_objectpermission (
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(200) NOT NULL,
    enabled boolean NOT NULL,
    actions jsonb NOT NULL,
    constraints jsonb
);


ALTER TABLE public.users_objectpermission OWNER TO nautobot;

--
-- Name: users_objectpermission_groups; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.users_objectpermission_groups (
    id integer NOT NULL,
    objectpermission_id uuid NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_objectpermission_groups OWNER TO nautobot;

--
-- Name: users_objectpermission_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.users_objectpermission_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_objectpermission_groups_id_seq OWNER TO nautobot;

--
-- Name: users_objectpermission_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.users_objectpermission_groups_id_seq OWNED BY public.users_objectpermission_groups.id;


--
-- Name: users_objectpermission_object_types; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.users_objectpermission_object_types (
    id integer NOT NULL,
    objectpermission_id uuid NOT NULL,
    contenttype_id integer NOT NULL
);


ALTER TABLE public.users_objectpermission_object_types OWNER TO nautobot;

--
-- Name: users_objectpermission_object_types_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.users_objectpermission_object_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_objectpermission_object_types_id_seq OWNER TO nautobot;

--
-- Name: users_objectpermission_object_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.users_objectpermission_object_types_id_seq OWNED BY public.users_objectpermission_object_types.id;


--
-- Name: users_objectpermission_users; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.users_objectpermission_users (
    id integer NOT NULL,
    objectpermission_id uuid NOT NULL,
    user_id uuid NOT NULL
);


ALTER TABLE public.users_objectpermission_users OWNER TO nautobot;

--
-- Name: users_objectpermission_users_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.users_objectpermission_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_objectpermission_users_id_seq OWNER TO nautobot;

--
-- Name: users_objectpermission_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.users_objectpermission_users_id_seq OWNED BY public.users_objectpermission_users.id;


--
-- Name: users_token; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.users_token (
    id uuid NOT NULL,
    created timestamp with time zone NOT NULL,
    expires timestamp with time zone,
    key character varying(40) NOT NULL,
    write_enabled boolean NOT NULL,
    description character varying(200) NOT NULL,
    user_id uuid NOT NULL
);


ALTER TABLE public.users_token OWNER TO nautobot;

--
-- Name: virtualization_cluster; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.virtualization_cluster (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    comments text NOT NULL,
    group_id uuid,
    site_id uuid,
    tenant_id uuid,
    type_id uuid NOT NULL
);


ALTER TABLE public.virtualization_cluster OWNER TO nautobot;

--
-- Name: virtualization_clustergroup; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.virtualization_clustergroup (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    description character varying(200) NOT NULL
);


ALTER TABLE public.virtualization_clustergroup OWNER TO nautobot;

--
-- Name: virtualization_clustertype; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.virtualization_clustertype (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL,
    description character varying(200) NOT NULL
);


ALTER TABLE public.virtualization_clustertype OWNER TO nautobot;

--
-- Name: virtualization_virtualmachine; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.virtualization_virtualmachine (
    id uuid NOT NULL,
    created date,
    last_updated timestamp with time zone,
    _custom_field_data jsonb NOT NULL,
    local_context_data jsonb,
    local_context_data_owner_object_id uuid,
    name character varying(64) NOT NULL,
    vcpus smallint,
    memory integer,
    disk integer,
    comments text NOT NULL,
    cluster_id uuid NOT NULL,
    local_context_data_owner_content_type_id integer,
    platform_id uuid,
    primary_ip4_id uuid,
    primary_ip6_id uuid,
    role_id uuid,
    status_id uuid,
    tenant_id uuid,
    CONSTRAINT virtualization_virtualmachine_disk_check CHECK ((disk >= 0)),
    CONSTRAINT virtualization_virtualmachine_memory_check CHECK ((memory >= 0)),
    CONSTRAINT virtualization_virtualmachine_vcpus_check CHECK ((vcpus >= 0))
);


ALTER TABLE public.virtualization_virtualmachine OWNER TO nautobot;

--
-- Name: virtualization_vminterface; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.virtualization_vminterface (
    id uuid NOT NULL,
    _custom_field_data jsonb NOT NULL,
    enabled boolean NOT NULL,
    mac_address character varying(18),
    mtu integer,
    mode character varying(50) NOT NULL,
    name character varying(64) NOT NULL,
    _name character varying(100) NOT NULL,
    description character varying(200) NOT NULL,
    untagged_vlan_id uuid,
    virtual_machine_id uuid NOT NULL,
    CONSTRAINT virtualization_vminterface_mtu_check CHECK ((mtu >= 0))
);


ALTER TABLE public.virtualization_vminterface OWNER TO nautobot;

--
-- Name: virtualization_vminterface_tagged_vlans; Type: TABLE; Schema: public; Owner: nautobot
--

CREATE TABLE public.virtualization_vminterface_tagged_vlans (
    id integer NOT NULL,
    vminterface_id uuid NOT NULL,
    vlan_id uuid NOT NULL
);


ALTER TABLE public.virtualization_vminterface_tagged_vlans OWNER TO nautobot;

--
-- Name: virtualization_vminterface_tagged_vlans_id_seq; Type: SEQUENCE; Schema: public; Owner: nautobot
--

CREATE SEQUENCE public.virtualization_vminterface_tagged_vlans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.virtualization_vminterface_tagged_vlans_id_seq OWNER TO nautobot;

--
-- Name: virtualization_vminterface_tagged_vlans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nautobot
--

ALTER SEQUENCE public.virtualization_vminterface_tagged_vlans_id_seq OWNED BY public.virtualization_vminterface_tagged_vlans.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: dcim_interface_tagged_vlans id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_interface_tagged_vlans ALTER COLUMN id SET DEFAULT nextval('public.dcim_interface_tagged_vlans_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: extras_configcontext_cluster_groups id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_cluster_groups ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_cluster_groups_id_seq'::regclass);


--
-- Name: extras_configcontext_clusters id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_clusters ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_clusters_id_seq'::regclass);


--
-- Name: extras_configcontext_platforms id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_platforms ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_platforms_id_seq'::regclass);


--
-- Name: extras_configcontext_regions id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_regions ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_regions_id_seq'::regclass);


--
-- Name: extras_configcontext_roles id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_roles ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_roles_id_seq'::regclass);


--
-- Name: extras_configcontext_sites id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_sites ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_sites_id_seq'::regclass);


--
-- Name: extras_configcontext_tags id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_tags ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_tags_id_seq'::regclass);


--
-- Name: extras_configcontext_tenant_groups id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_tenant_groups ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_tenant_groups_id_seq'::regclass);


--
-- Name: extras_configcontext_tenants id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_tenants ALTER COLUMN id SET DEFAULT nextval('public.extras_configcontext_tenants_id_seq'::regclass);


--
-- Name: extras_customfield_content_types id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_customfield_content_types ALTER COLUMN id SET DEFAULT nextval('public.extras_customfield_content_types_id_seq'::regclass);


--
-- Name: extras_status_content_types id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_status_content_types ALTER COLUMN id SET DEFAULT nextval('public.extras_status_content_types_id_seq'::regclass);


--
-- Name: extras_webhook_content_types id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_webhook_content_types ALTER COLUMN id SET DEFAULT nextval('public.extras_webhook_content_types_id_seq'::regclass);


--
-- Name: ipam_service_ipaddresses id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_service_ipaddresses ALTER COLUMN id SET DEFAULT nextval('public.ipam_service_ipaddresses_id_seq'::regclass);


--
-- Name: ipam_vrf_export_targets id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vrf_export_targets ALTER COLUMN id SET DEFAULT nextval('public.ipam_vrf_export_targets_id_seq'::regclass);


--
-- Name: ipam_vrf_import_targets id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vrf_import_targets ALTER COLUMN id SET DEFAULT nextval('public.ipam_vrf_import_targets_id_seq'::regclass);


--
-- Name: social_auth_association id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.social_auth_association ALTER COLUMN id SET DEFAULT nextval('public.social_auth_association_id_seq'::regclass);


--
-- Name: social_auth_code id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.social_auth_code ALTER COLUMN id SET DEFAULT nextval('public.social_auth_code_id_seq'::regclass);


--
-- Name: social_auth_nonce id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.social_auth_nonce ALTER COLUMN id SET DEFAULT nextval('public.social_auth_nonce_id_seq'::regclass);


--
-- Name: social_auth_partial id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.social_auth_partial ALTER COLUMN id SET DEFAULT nextval('public.social_auth_partial_id_seq'::regclass);


--
-- Name: social_auth_usersocialauth id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.social_auth_usersocialauth ALTER COLUMN id SET DEFAULT nextval('public.social_auth_usersocialauth_id_seq'::regclass);


--
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Name: users_objectpermission_groups id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_objectpermission_groups ALTER COLUMN id SET DEFAULT nextval('public.users_objectpermission_groups_id_seq'::regclass);


--
-- Name: users_objectpermission_object_types id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_objectpermission_object_types ALTER COLUMN id SET DEFAULT nextval('public.users_objectpermission_object_types_id_seq'::regclass);


--
-- Name: users_objectpermission_users id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_objectpermission_users ALTER COLUMN id SET DEFAULT nextval('public.users_objectpermission_users_id_seq'::regclass);


--
-- Name: virtualization_vminterface_tagged_vlans id; Type: DEFAULT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans ALTER COLUMN id SET DEFAULT nextval('public.virtualization_vminterface_tagged_vlans_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	11	add_logentry
2	Can change log entry	11	change_logentry
3	Can delete log entry	11	delete_logentry
4	Can view log entry	11	view_logentry
5	Can add permission	12	add_permission
6	Can change permission	12	change_permission
7	Can delete permission	12	delete_permission
8	Can view permission	12	view_permission
9	Can add group	13	add_group
10	Can change group	13	change_group
11	Can delete group	13	delete_group
12	Can view group	13	view_group
13	Can add content type	14	add_contenttype
14	Can change content type	14	change_contenttype
15	Can delete content type	14	delete_contenttype
16	Can view content type	14	view_contenttype
17	Can add session	15	add_session
18	Can change session	15	change_session
19	Can delete session	15	delete_session
20	Can view session	15	view_session
21	Can add association	16	add_association
22	Can change association	16	change_association
23	Can delete association	16	delete_association
24	Can view association	16	view_association
25	Can add code	17	add_code
26	Can change code	17	change_code
27	Can delete code	17	delete_code
28	Can view code	17	view_code
29	Can add nonce	18	add_nonce
30	Can change nonce	18	change_nonce
31	Can delete nonce	18	delete_nonce
32	Can view nonce	18	view_nonce
33	Can add user social auth	19	add_usersocialauth
34	Can change user social auth	19	change_usersocialauth
35	Can delete user social auth	19	delete_usersocialauth
36	Can view user social auth	19	view_usersocialauth
37	Can add partial	20	add_partial
38	Can change partial	20	change_partial
39	Can delete partial	20	delete_partial
40	Can view partial	20	view_partial
41	Can add tag	21	add_tag
42	Can change tag	21	change_tag
43	Can delete tag	21	delete_tag
44	Can view tag	21	view_tag
45	Can add tagged item	22	add_taggeditem
46	Can change tagged item	22	change_taggeditem
47	Can delete tagged item	22	delete_taggeditem
48	Can view tagged item	22	view_taggeditem
49	Can add circuit	6	add_circuit
50	Can change circuit	6	change_circuit
51	Can delete circuit	6	delete_circuit
52	Can view circuit	6	view_circuit
53	Can add circuit termination	23	add_circuittermination
54	Can change circuit termination	23	change_circuittermination
55	Can delete circuit termination	23	delete_circuittermination
56	Can view circuit termination	23	view_circuittermination
57	Can add circuit type	24	add_circuittype
58	Can change circuit type	24	change_circuittype
59	Can delete circuit type	24	delete_circuittype
60	Can view circuit type	24	view_circuittype
61	Can add provider	25	add_provider
62	Can change provider	25	change_provider
63	Can delete provider	25	delete_provider
64	Can view provider	25	view_provider
65	Can add cable	4	add_cable
66	Can change cable	4	change_cable
67	Can delete cable	4	delete_cable
68	Can view cable	4	view_cable
69	Can add cable path	26	add_cablepath
70	Can change cable path	26	change_cablepath
71	Can delete cable path	26	delete_cablepath
72	Can view cable path	26	view_cablepath
73	Can add console port	27	add_consoleport
74	Can change console port	27	change_consoleport
75	Can delete console port	27	delete_consoleport
76	Can view console port	27	view_consoleport
77	Can add console port template	28	add_consoleporttemplate
78	Can change console port template	28	change_consoleporttemplate
79	Can delete console port template	28	delete_consoleporttemplate
80	Can view console port template	28	view_consoleporttemplate
81	Can add console server port	29	add_consoleserverport
82	Can change console server port	29	change_consoleserverport
83	Can delete console server port	29	delete_consoleserverport
84	Can view console server port	29	view_consoleserverport
85	Can add console server port template	30	add_consoleserverporttemplate
86	Can change console server port template	30	change_consoleserverporttemplate
87	Can delete console server port template	30	delete_consoleserverporttemplate
88	Can view console server port template	30	view_consoleserverporttemplate
89	Can add device	1	add_device
90	Can change device	1	change_device
91	Can delete device	1	delete_device
92	Can view device	1	view_device
93	Can add device bay	31	add_devicebay
94	Can change device bay	31	change_devicebay
95	Can delete device bay	31	delete_devicebay
96	Can view device bay	31	view_devicebay
97	Can add device bay template	32	add_devicebaytemplate
98	Can change device bay template	32	change_devicebaytemplate
99	Can delete device bay template	32	delete_devicebaytemplate
100	Can view device bay template	32	view_devicebaytemplate
101	Can add device role	33	add_devicerole
102	Can change device role	33	change_devicerole
103	Can delete device role	33	delete_devicerole
104	Can view device role	33	view_devicerole
105	Can add device type	34	add_devicetype
106	Can change device type	34	change_devicetype
107	Can delete device type	34	delete_devicetype
108	Can view device type	34	view_devicetype
109	Can add front port	35	add_frontport
110	Can change front port	35	change_frontport
111	Can delete front port	35	delete_frontport
112	Can view front port	35	view_frontport
113	Can add front port template	36	add_frontporttemplate
114	Can change front port template	36	change_frontporttemplate
115	Can delete front port template	36	delete_frontporttemplate
116	Can view front port template	36	view_frontporttemplate
117	Can add interface	37	add_interface
118	Can change interface	37	change_interface
119	Can delete interface	37	delete_interface
120	Can view interface	37	view_interface
121	Can add interface template	38	add_interfacetemplate
122	Can change interface template	38	change_interfacetemplate
123	Can delete interface template	38	delete_interfacetemplate
124	Can view interface template	38	view_interfacetemplate
125	Can add inventory item	39	add_inventoryitem
126	Can change inventory item	39	change_inventoryitem
127	Can delete inventory item	39	delete_inventoryitem
128	Can view inventory item	39	view_inventoryitem
129	Can add manufacturer	40	add_manufacturer
130	Can change manufacturer	40	change_manufacturer
131	Can delete manufacturer	40	delete_manufacturer
132	Can view manufacturer	40	view_manufacturer
133	Can add platform	41	add_platform
134	Can change platform	41	change_platform
135	Can delete platform	41	delete_platform
136	Can view platform	41	view_platform
137	Can add power feed	5	add_powerfeed
138	Can change power feed	5	change_powerfeed
139	Can delete power feed	5	delete_powerfeed
140	Can view power feed	5	view_powerfeed
141	Can add power outlet	42	add_poweroutlet
142	Can change power outlet	42	change_poweroutlet
143	Can delete power outlet	42	delete_poweroutlet
144	Can view power outlet	42	view_poweroutlet
145	Can add power outlet template	43	add_poweroutlettemplate
146	Can change power outlet template	43	change_poweroutlettemplate
147	Can delete power outlet template	43	delete_poweroutlettemplate
148	Can view power outlet template	43	view_poweroutlettemplate
149	Can add power panel	44	add_powerpanel
150	Can change power panel	44	change_powerpanel
151	Can delete power panel	44	delete_powerpanel
152	Can view power panel	44	view_powerpanel
153	Can add power port	45	add_powerport
154	Can change power port	45	change_powerport
155	Can delete power port	45	delete_powerport
156	Can view power port	45	view_powerport
157	Can add power port template	46	add_powerporttemplate
158	Can change power port template	46	change_powerporttemplate
159	Can delete power port template	46	delete_powerporttemplate
160	Can view power port template	46	view_powerporttemplate
161	Can add rack	3	add_rack
162	Can change rack	3	change_rack
163	Can delete rack	3	delete_rack
164	Can view rack	3	view_rack
165	Can add rack group	47	add_rackgroup
166	Can change rack group	47	change_rackgroup
167	Can delete rack group	47	delete_rackgroup
168	Can view rack group	47	view_rackgroup
169	Can add rack reservation	48	add_rackreservation
170	Can change rack reservation	48	change_rackreservation
171	Can delete rack reservation	48	delete_rackreservation
172	Can view rack reservation	48	view_rackreservation
173	Can add rack role	49	add_rackrole
174	Can change rack role	49	change_rackrole
175	Can delete rack role	49	delete_rackrole
176	Can view rack role	49	view_rackrole
177	Can add rear port	50	add_rearport
178	Can change rear port	50	change_rearport
179	Can delete rear port	50	delete_rearport
180	Can view rear port	50	view_rearport
181	Can add rear port template	51	add_rearporttemplate
182	Can change rear port template	51	change_rearporttemplate
183	Can delete rear port template	51	delete_rearporttemplate
184	Can view rear port template	51	view_rearporttemplate
185	Can add region	52	add_region
186	Can change region	52	change_region
187	Can delete region	52	delete_region
188	Can view region	52	view_region
189	Can add site	2	add_site
190	Can change site	2	change_site
191	Can delete site	2	delete_site
192	Can view site	2	view_site
193	Can add virtual chassis	53	add_virtualchassis
194	Can change virtual chassis	53	change_virtualchassis
195	Can delete virtual chassis	53	delete_virtualchassis
196	Can view virtual chassis	53	view_virtualchassis
197	Can add aggregate	54	add_aggregate
198	Can change aggregate	54	change_aggregate
199	Can delete aggregate	54	delete_aggregate
200	Can view aggregate	54	view_aggregate
201	Can add IP address	8	add_ipaddress
202	Can change IP address	8	change_ipaddress
203	Can delete IP address	8	delete_ipaddress
204	Can view IP address	8	view_ipaddress
205	Can add prefix	7	add_prefix
206	Can change prefix	7	change_prefix
207	Can delete prefix	7	delete_prefix
208	Can view prefix	7	view_prefix
209	Can add RIR	55	add_rir
210	Can change RIR	55	change_rir
211	Can delete RIR	55	delete_rir
212	Can view RIR	55	view_rir
213	Can add role	56	add_role
214	Can change role	56	change_role
215	Can delete role	56	delete_role
216	Can view role	56	view_role
217	Can add route target	57	add_routetarget
218	Can change route target	57	change_routetarget
219	Can delete route target	57	delete_routetarget
220	Can view route target	57	view_routetarget
221	Can add VRF	58	add_vrf
222	Can change VRF	58	change_vrf
223	Can delete VRF	58	delete_vrf
224	Can view VRF	58	view_vrf
225	Can add VLAN group	59	add_vlangroup
226	Can change VLAN group	59	change_vlangroup
227	Can delete VLAN group	59	delete_vlangroup
228	Can view VLAN group	59	view_vlangroup
229	Can add VLAN	9	add_vlan
230	Can change VLAN	9	change_vlan
231	Can delete VLAN	9	delete_vlan
232	Can view VLAN	9	view_vlan
233	Can add service	60	add_service
234	Can change service	60	change_service
235	Can delete service	60	delete_service
236	Can view service	60	view_service
237	Can add job	61	add_job
238	Can change job	61	change_job
239	Can delete job	61	delete_job
240	Can view job	61	view_job
241	Can add config context	62	add_configcontext
242	Can change config context	62	change_configcontext
243	Can delete config context	62	delete_configcontext
244	Can view config context	62	view_configcontext
245	Can add custom field	63	add_customfield
246	Can change custom field	63	change_customfield
247	Can delete custom field	63	delete_customfield
248	Can view custom field	63	view_customfield
249	Can add custom field choice	64	add_customfieldchoice
250	Can change custom field choice	64	change_customfieldchoice
251	Can delete custom field choice	64	delete_customfieldchoice
252	Can view custom field choice	64	view_customfieldchoice
253	Can add custom link	65	add_customlink
254	Can change custom link	65	change_customlink
255	Can delete custom link	65	delete_customlink
256	Can view custom link	65	view_customlink
257	Can add export template	66	add_exporttemplate
258	Can change export template	66	change_exporttemplate
259	Can delete export template	66	delete_exporttemplate
260	Can view export template	66	view_exporttemplate
261	Can add Git repository	67	add_gitrepository
262	Can change Git repository	67	change_gitrepository
263	Can delete Git repository	67	delete_gitrepository
264	Can view Git repository	67	view_gitrepository
265	Can add image attachment	68	add_imageattachment
266	Can change image attachment	68	change_imageattachment
267	Can delete image attachment	68	delete_imageattachment
268	Can view image attachment	68	view_imageattachment
269	Can add job result	69	add_jobresult
270	Can change job result	69	change_jobresult
271	Can delete job result	69	delete_jobresult
272	Can view job result	69	view_jobresult
273	Can add relationship	70	add_relationship
274	Can change relationship	70	change_relationship
275	Can delete relationship	70	delete_relationship
276	Can view relationship	70	view_relationship
277	Can add tag	71	add_tag
278	Can change tag	71	change_tag
279	Can delete tag	71	delete_tag
280	Can view tag	71	view_tag
281	Can add webhook	72	add_webhook
282	Can change webhook	72	change_webhook
283	Can delete webhook	72	delete_webhook
284	Can view webhook	72	view_webhook
285	Can add tagged item	73	add_taggeditem
286	Can change tagged item	73	change_taggeditem
287	Can delete tagged item	73	delete_taggeditem
288	Can view tagged item	73	view_taggeditem
289	Can add status	74	add_status
290	Can change status	74	change_status
291	Can delete status	74	delete_status
292	Can view status	74	view_status
293	Can add relationship association	75	add_relationshipassociation
294	Can change relationship association	75	change_relationshipassociation
295	Can delete relationship association	75	delete_relationshipassociation
296	Can view relationship association	75	view_relationshipassociation
297	Can add object change	76	add_objectchange
298	Can change object change	76	change_objectchange
299	Can delete object change	76	delete_objectchange
300	Can view object change	76	view_objectchange
301	Can add tenant group	77	add_tenantgroup
302	Can change tenant group	77	change_tenantgroup
303	Can delete tenant group	77	delete_tenantgroup
304	Can view tenant group	77	view_tenantgroup
305	Can add tenant	78	add_tenant
306	Can change tenant	78	change_tenant
307	Can delete tenant	78	delete_tenant
308	Can view tenant	78	view_tenant
309	Can add user	79	add_user
310	Can change user	79	change_user
311	Can delete user	79	delete_user
312	Can view user	79	view_user
313	Can add Group	80	add_admingroup
314	Can change Group	80	change_admingroup
315	Can delete Group	80	delete_admingroup
316	Can view Group	80	view_admingroup
317	Can add token	81	add_token
318	Can change token	81	change_token
319	Can delete token	81	delete_token
320	Can view token	81	view_token
321	Can add permission	82	add_objectpermission
322	Can change permission	82	change_objectpermission
323	Can delete permission	82	delete_objectpermission
324	Can view permission	82	view_objectpermission
325	Can add cluster	83	add_cluster
326	Can change cluster	83	change_cluster
327	Can delete cluster	83	delete_cluster
328	Can view cluster	83	view_cluster
329	Can add cluster group	84	add_clustergroup
330	Can change cluster group	84	change_clustergroup
331	Can delete cluster group	84	delete_clustergroup
332	Can view cluster group	84	view_clustergroup
333	Can add cluster type	85	add_clustertype
334	Can change cluster type	85	change_clustertype
335	Can delete cluster type	85	delete_clustertype
336	Can view cluster type	85	view_clustertype
337	Can add virtual machine	10	add_virtualmachine
338	Can change virtual machine	10	change_virtualmachine
339	Can delete virtual machine	10	delete_virtualmachine
340	Can view virtual machine	10	view_virtualmachine
341	Can add interface	86	add_vminterface
342	Can change interface	86	change_vminterface
343	Can delete interface	86	delete_vminterface
344	Can view interface	86	view_vminterface
364	Can add onboarding task	100	add_onboardingtask
365	Can change onboarding task	100	change_onboardingtask
366	Can delete onboarding task	100	delete_onboardingtask
367	Can view onboarding task	100	view_onboardingtask
368	Can add onboarding device	101	add_onboardingdevice
369	Can change onboarding device	101	change_onboardingdevice
370	Can delete onboarding device	101	delete_onboardingdevice
371	Can view onboarding device	101	view_onboardingdevice
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.auth_user (password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, id, config_data) FROM stdin;
pbkdf2_sha256$216000$YwNEqrDjFzsv$wC8xKF8g6FN9EOch788IqueXdMcofo2Ccuouc+M78l8=	2021-05-15 04:32:19.580763-05	t	tom			tom@inetsix.net	t	t	2021-05-15 04:32:10.62627-05	8cfb9237-fa62-48f4-b537-2411844e8223	{"tables": {"DeviceInterfaceTable": {"columns": ["name", "label", "enabled", "type", "lag", "mtu", "mode", "description", "cable", "cable_peer", "connection", "ip_addresses"]}}}
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: circuits_circuit; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.circuits_circuit (id, created, last_updated, _custom_field_data, cid, install_date, commit_rate, description, comments, provider_id, status_id, tenant_id, type_id) FROM stdin;
\.


--
-- Data for Name: circuits_circuittermination; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.circuits_circuittermination (id, _cable_peer_id, term_side, port_speed, upstream_speed, xconnect_id, pp_info, description, _cable_peer_type_id, _path_id, cable_id, circuit_id, site_id) FROM stdin;
\.


--
-- Data for Name: circuits_circuittype; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.circuits_circuittype (id, created, last_updated, _custom_field_data, name, slug, description) FROM stdin;
\.


--
-- Data for Name: circuits_provider; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.circuits_provider (id, created, last_updated, _custom_field_data, name, slug, asn, account, portal_url, noc_contact, admin_contact, comments) FROM stdin;
\.


--
-- Data for Name: dcim_cable; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_cable (id, created, last_updated, _custom_field_data, termination_a_id, termination_b_id, type, label, color, length, length_unit, _abs_length, _termination_a_device_id, _termination_b_device_id, status_id, termination_a_type_id, termination_b_type_id) FROM stdin;
1018d4e1-582e-4ef3-8692-6fa9911263d4	2021-05-15	2021-05-15 05:28:01.761006-05	{}	4e12f877-17c4-4443-a889-1df8bc033964	6fc6575c-4251-45dc-bd98-406c5fa98129	mmf			\N		\N	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	8b091d4d-5916-4af2-a38b-7203150ec519	5784389a-7f13-44c2-b0c2-c0e19cb761b8	37	37
6d7b518c-fae1-4a82-88b2-4325656230f3	2021-05-15	2021-05-15 05:28:47.20958-05	{}	69d33a09-9e17-47ea-978e-73c5be3bd2c6	6658fefb-a245-441e-a6f0-ad09c76db1fa	mmf			\N		\N	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	441929ac-d4e0-4240-b224-937aedb59993	5784389a-7f13-44c2-b0c2-c0e19cb761b8	37	37
00dfa530-7ede-4f71-a6c3-9e99f208f3c8	2021-05-15	2021-05-15 05:29:10.26012-05	{}	02919cfe-55e6-462d-b284-8b4f10634875	b190ec86-4fdd-4e52-b1d5-cf303161085c	mmf			\N		\N	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	38ce7334-00da-47fd-bcaf-d0cf58528951	5784389a-7f13-44c2-b0c2-c0e19cb761b8	37	37
dcb0a69d-bf42-4f76-92f0-c28b04c8ae00	2021-05-15	2021-05-15 05:29:57.656318-05	{}	e8a583fb-bc0f-4ddd-9494-bf5a3807ab27	3ef8fa66-5895-470f-b852-8062ca6aad9e	mmf			\N		\N	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	9da0d7c7-9756-44e8-999b-001b4e22a9b1	5784389a-7f13-44c2-b0c2-c0e19cb761b8	37	37
a0f17f93-c5b6-41f0-8224-34cbf449f8e6	2021-05-15	2021-05-15 05:33:41.541984-05	{}	e374430a-c416-4be5-9b60-0a02c26179fa	ddda2a2b-7e6a-4561-b14d-d5fd8be3b208	mmf			\N		\N	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	f63be1eb-4e67-4962-bbdc-0e9c8c823159	5784389a-7f13-44c2-b0c2-c0e19cb761b8	37	37
2a987237-4fca-4df6-a3b5-a944726fd703	2021-05-15	2021-05-15 05:34:05.11065-05	{}	146ee8e1-d203-4afa-a044-e7ee05ead7a3	426204a6-59a7-4925-930b-79fd09e657e1	mmf			\N		\N	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	9bd966fe-6ad8-48e5-92f8-d8afd0394c33	5784389a-7f13-44c2-b0c2-c0e19cb761b8	37	37
3014a667-0703-41c7-8025-c3016633e815	2021-05-15	2021-05-15 05:34:29.003777-05	{}	99565ef2-08c2-42ea-a350-846263ca50dd	4cbdcc51-8158-425d-820b-c00d5fcced2e	mmf			\N		\N	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	8b12c575-582d-41ff-a6ba-2fbf6ee1e1ce	5784389a-7f13-44c2-b0c2-c0e19cb761b8	37	37
4a08b3f6-05d3-44a6-86dd-a3f0835831b1	2021-05-15	2021-05-15 05:35:20.167525-05	{}	cad0ece2-249a-4cc6-a987-889dfbb1192d	7c7bac10-0cc5-4e8d-b5c0-63521d392c57	mmf			\N		\N	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	613b0222-eea1-42b0-bd99-59b552509213	5784389a-7f13-44c2-b0c2-c0e19cb761b8	37	37
\.


--
-- Data for Name: dcim_cablepath; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_cablepath (id, origin_id, destination_id, path, is_active, is_split, destination_type_id, origin_type_id) FROM stdin;
d9dd1c96-b7db-4d34-98b7-674523179ef2	4e12f877-17c4-4443-a889-1df8bc033964	6fc6575c-4251-45dc-bd98-406c5fa98129	["4:1018d4e1-582e-4ef3-8692-6fa9911263d4"]	t	f	37	37
8d855d83-91a8-4822-9a02-6442c0b6c7ac	6fc6575c-4251-45dc-bd98-406c5fa98129	4e12f877-17c4-4443-a889-1df8bc033964	["4:1018d4e1-582e-4ef3-8692-6fa9911263d4"]	t	f	37	37
2661186c-3b7a-489a-a473-28be47e0acd1	69d33a09-9e17-47ea-978e-73c5be3bd2c6	6658fefb-a245-441e-a6f0-ad09c76db1fa	["4:6d7b518c-fae1-4a82-88b2-4325656230f3"]	t	f	37	37
c9b3898d-9cb7-4221-a6bc-657ae6f106a4	6658fefb-a245-441e-a6f0-ad09c76db1fa	69d33a09-9e17-47ea-978e-73c5be3bd2c6	["4:6d7b518c-fae1-4a82-88b2-4325656230f3"]	t	f	37	37
d404922c-8d53-44e2-915c-ab6da148fdb6	02919cfe-55e6-462d-b284-8b4f10634875	b190ec86-4fdd-4e52-b1d5-cf303161085c	["4:00dfa530-7ede-4f71-a6c3-9e99f208f3c8"]	t	f	37	37
3cd7b042-abf0-4748-b708-8db7c98be5d3	b190ec86-4fdd-4e52-b1d5-cf303161085c	02919cfe-55e6-462d-b284-8b4f10634875	["4:00dfa530-7ede-4f71-a6c3-9e99f208f3c8"]	t	f	37	37
3017061c-33ba-4bc8-905b-0c2741b20304	e8a583fb-bc0f-4ddd-9494-bf5a3807ab27	3ef8fa66-5895-470f-b852-8062ca6aad9e	["4:dcb0a69d-bf42-4f76-92f0-c28b04c8ae00"]	t	f	37	37
9552b078-4156-48c8-894f-5bab298a87f9	3ef8fa66-5895-470f-b852-8062ca6aad9e	e8a583fb-bc0f-4ddd-9494-bf5a3807ab27	["4:dcb0a69d-bf42-4f76-92f0-c28b04c8ae00"]	t	f	37	37
1a8852a3-4ba7-4474-83f8-c15090ca6743	e374430a-c416-4be5-9b60-0a02c26179fa	ddda2a2b-7e6a-4561-b14d-d5fd8be3b208	["4:a0f17f93-c5b6-41f0-8224-34cbf449f8e6"]	t	f	37	37
c8ab573b-133a-49f2-8d6b-e2783b03f4b4	ddda2a2b-7e6a-4561-b14d-d5fd8be3b208	e374430a-c416-4be5-9b60-0a02c26179fa	["4:a0f17f93-c5b6-41f0-8224-34cbf449f8e6"]	t	f	37	37
3c319f8e-915f-403f-9777-e60a053c5687	146ee8e1-d203-4afa-a044-e7ee05ead7a3	426204a6-59a7-4925-930b-79fd09e657e1	["4:2a987237-4fca-4df6-a3b5-a944726fd703"]	t	f	37	37
0b04629a-0187-471f-a9ab-37452b4fbe84	426204a6-59a7-4925-930b-79fd09e657e1	146ee8e1-d203-4afa-a044-e7ee05ead7a3	["4:2a987237-4fca-4df6-a3b5-a944726fd703"]	t	f	37	37
a4579efb-85d3-4a78-baf0-11aa72bf232c	99565ef2-08c2-42ea-a350-846263ca50dd	4cbdcc51-8158-425d-820b-c00d5fcced2e	["4:3014a667-0703-41c7-8025-c3016633e815"]	t	f	37	37
65783f3f-6158-4906-9355-6197f3959796	4cbdcc51-8158-425d-820b-c00d5fcced2e	99565ef2-08c2-42ea-a350-846263ca50dd	["4:3014a667-0703-41c7-8025-c3016633e815"]	t	f	37	37
1f89672e-38fe-4b1c-b333-d3346fbd8bf6	cad0ece2-249a-4cc6-a987-889dfbb1192d	7c7bac10-0cc5-4e8d-b5c0-63521d392c57	["4:4a08b3f6-05d3-44a6-86dd-a3f0835831b1"]	t	f	37	37
2d81d54e-fc2a-426e-acd6-db54ccf2c827	7c7bac10-0cc5-4e8d-b5c0-63521d392c57	cad0ece2-249a-4cc6-a987-889dfbb1192d	["4:4a08b3f6-05d3-44a6-86dd-a3f0835831b1"]	t	f	37	37
\.


--
-- Data for Name: dcim_consoleport; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_consoleport (id, _custom_field_data, name, _name, label, description, _cable_peer_id, type, _cable_peer_type_id, _path_id, cable_id, device_id) FROM stdin;
\.


--
-- Data for Name: dcim_consoleporttemplate; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_consoleporttemplate (id, _custom_field_data, name, _name, label, description, type, device_type_id) FROM stdin;
\.


--
-- Data for Name: dcim_consoleserverport; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_consoleserverport (id, _custom_field_data, name, _name, label, description, _cable_peer_id, type, _cable_peer_type_id, _path_id, cable_id, device_id) FROM stdin;
\.


--
-- Data for Name: dcim_consoleserverporttemplate; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_consoleserverporttemplate (id, _custom_field_data, name, _name, label, description, type, device_type_id) FROM stdin;
\.


--
-- Data for Name: dcim_device; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_device (id, created, last_updated, _custom_field_data, local_context_data, local_context_data_owner_object_id, name, _name, serial, asset_tag, "position", face, vc_position, vc_priority, comments, cluster_id, device_role_id, device_type_id, local_context_data_owner_content_type_id, platform_id, primary_ip4_id, primary_ip6_id, rack_id, site_id, status_id, tenant_id, virtual_chassis_id) FROM stdin;
8b091d4d-5916-4af2-a38b-7203150ec519	2021-05-15	2021-05-15 05:38:31.702118-05	{}	\N	\N	EAPI-LEAF1A	EAPI-LEAF00000001A		\N	\N		\N	\N		\N	edb45c97-c633-40f9-8f6f-d8f5f599bca6	1e861408-ae79-4a0c-9c52-db8f610de947	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	95600439-eca3-45e9-b3ef-955c69b3cef9	\N	\N	f37de776-152a-411a-ae05-d9004523eebc	9b0fe008-789b-4390-81b8-d03f684af1dc	\N	\N
441929ac-d4e0-4240-b224-937aedb59993	2021-05-15	2021-05-15 05:38:32.264055-05	{}	\N	\N	EAPI-LEAF1B	EAPI-LEAF00000001B		\N	\N		\N	\N		\N	edb45c97-c633-40f9-8f6f-d8f5f599bca6	1e861408-ae79-4a0c-9c52-db8f610de947	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	28528116-39ab-464c-9934-14ac2a212acd	\N	\N	f37de776-152a-411a-ae05-d9004523eebc	9b0fe008-789b-4390-81b8-d03f684af1dc	\N	\N
38ce7334-00da-47fd-bcaf-d0cf58528951	2021-05-15	2021-05-15 05:38:32.77767-05	{}	\N	\N	EAPI-LEAF2A	EAPI-LEAF00000002A		\N	\N		\N	\N		\N	edb45c97-c633-40f9-8f6f-d8f5f599bca6	1e861408-ae79-4a0c-9c52-db8f610de947	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	599ecf26-6583-4567-bd72-13e5dcbe9e8d	\N	\N	f37de776-152a-411a-ae05-d9004523eebc	9b0fe008-789b-4390-81b8-d03f684af1dc	\N	\N
9da0d7c7-9756-44e8-999b-001b4e22a9b1	2021-05-15	2021-05-15 05:38:33.307053-05	{}	\N	\N	EAPI-LEAF2B	EAPI-LEAF00000002B		\N	\N		\N	\N		\N	edb45c97-c633-40f9-8f6f-d8f5f599bca6	1e861408-ae79-4a0c-9c52-db8f610de947	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	31c9ed5f-55c7-4b6d-b1e0-cdc20f3b50dd	\N	\N	f37de776-152a-411a-ae05-d9004523eebc	9b0fe008-789b-4390-81b8-d03f684af1dc	\N	\N
f63be1eb-4e67-4962-bbdc-0e9c8c823159	2021-05-15	2021-05-15 05:38:33.807947-05	{}	\N	\N	EAPI-BL01A	EAPI-BL00000001A		\N	\N		\N	\N		\N	edb45c97-c633-40f9-8f6f-d8f5f599bca6	1e861408-ae79-4a0c-9c52-db8f610de947	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	4fa3ea71-1bea-4f7c-90ec-b0e0f602f095	\N	\N	f37de776-152a-411a-ae05-d9004523eebc	9b0fe008-789b-4390-81b8-d03f684af1dc	\N	\N
9bd966fe-6ad8-48e5-92f8-d8afd0394c33	2021-05-15	2021-05-15 05:38:34.337344-05	{}	\N	\N	EAPI-BL01B	EAPI-BL00000001B		\N	\N		\N	\N		\N	edb45c97-c633-40f9-8f6f-d8f5f599bca6	1e861408-ae79-4a0c-9c52-db8f610de947	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	1018c1d2-3697-4c41-8270-bd31bbc47828	\N	\N	f37de776-152a-411a-ae05-d9004523eebc	9b0fe008-789b-4390-81b8-d03f684af1dc	\N	\N
8b12c575-582d-41ff-a6ba-2fbf6ee1e1ce	2021-05-15	2021-05-15 05:38:34.855381-05	{}	\N	\N	EAPI-LEAF3A	EAPI-LEAF00000003A		\N	\N		\N	\N		\N	edb45c97-c633-40f9-8f6f-d8f5f599bca6	1e861408-ae79-4a0c-9c52-db8f610de947	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	94590c80-f022-4b93-853c-3a05c43e6553	\N	\N	f37de776-152a-411a-ae05-d9004523eebc	9b0fe008-789b-4390-81b8-d03f684af1dc	\N	\N
613b0222-eea1-42b0-bd99-59b552509213	2021-05-15	2021-05-15 05:38:35.378691-05	{}	\N	\N	EAPI-LEAF4A	EAPI-LEAF00000004A		\N	\N		\N	\N		\N	edb45c97-c633-40f9-8f6f-d8f5f599bca6	1e861408-ae79-4a0c-9c52-db8f610de947	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	94392812-bbdf-42c0-b4be-75a252369283	\N	\N	f37de776-152a-411a-ae05-d9004523eebc	9b0fe008-789b-4390-81b8-d03f684af1dc	\N	\N
02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	2021-05-15	2021-05-15 05:38:35.897767-05	{}	\N	\N	EAPI-SPINE1	EAPI-SPINE00000001		\N	\N		\N	\N		\N	e42e9f0b-e496-43de-95a0-2d8de093fc96	1e861408-ae79-4a0c-9c52-db8f610de947	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	5aa4a0d9-0d10-4fa6-bf0a-c2fd97dcf8cc	\N	\N	f37de776-152a-411a-ae05-d9004523eebc	9b0fe008-789b-4390-81b8-d03f684af1dc	\N	\N
419b6e6a-71f7-4ab1-bbb4-56d7be97f946	2021-05-15	2021-05-15 05:38:36.398239-05	{}	\N	\N	EAPI-SPINE2	EAPI-SPINE00000002		\N	\N		\N	\N		\N	e42e9f0b-e496-43de-95a0-2d8de093fc96	1e861408-ae79-4a0c-9c52-db8f610de947	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	6d4b16dd-623a-428f-a557-bf5b7d892073	\N	\N	f37de776-152a-411a-ae05-d9004523eebc	9b0fe008-789b-4390-81b8-d03f684af1dc	\N	\N
\.


--
-- Data for Name: dcim_devicebay; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_devicebay (id, _custom_field_data, name, _name, label, description, device_id, installed_device_id) FROM stdin;
\.


--
-- Data for Name: dcim_devicebaytemplate; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_devicebaytemplate (id, _custom_field_data, name, _name, label, description, device_type_id) FROM stdin;
\.


--
-- Data for Name: dcim_devicerole; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_devicerole (id, created, last_updated, _custom_field_data, name, slug, color, vm_role, description) FROM stdin;
e42e9f0b-e496-43de-95a0-2d8de093fc96	2021-05-15	2021-05-15 04:40:22.940374-05	{}	Spine	spine	9e9e9e	t	
edb45c97-c633-40f9-8f6f-d8f5f599bca6	2021-05-15	2021-05-15 04:40:32.764745-05	{}	L3Leaf	l3leaf	607d8b	t	
\.


--
-- Data for Name: dcim_devicetype; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_devicetype (id, created, last_updated, _custom_field_data, model, slug, part_number, u_height, is_full_depth, subdevice_role, front_image, rear_image, comments, manufacturer_id) FROM stdin;
1e861408-ae79-4a0c-9c52-db8f610de947	2021-05-15	2021-05-15 04:37:11.514273-05	{}	vEOS	veos		0	f					a9874446-d447-4c93-a8c5-381eaa3655bc
1002d370-d35d-4045-af85-9e5455f2b7b6	2021-05-15	2021-05-15 04:38:53.553493-05	{}	cEOS	ceos		1	t					a9874446-d447-4c93-a8c5-381eaa3655bc
\.


--
-- Data for Name: dcim_frontport; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_frontport (id, _custom_field_data, name, _name, label, description, _cable_peer_id, type, rear_port_position, _cable_peer_type_id, cable_id, device_id, rear_port_id) FROM stdin;
\.


--
-- Data for Name: dcim_frontporttemplate; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_frontporttemplate (id, _custom_field_data, name, _name, label, description, type, rear_port_position, device_type_id, rear_port_id) FROM stdin;
\.


--
-- Data for Name: dcim_interface; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_interface (id, _custom_field_data, name, label, description, _cable_peer_id, enabled, mac_address, mtu, mode, _name, type, mgmt_only, _cable_peer_type_id, _path_id, cable_id, device_id, lag_id, untagged_vlan_id) FROM stdin;
d944f7fc-8f3e-42ec-a1db-7c5961ee3c18	{}	Ethernet2			\N	t	\N	\N		9999999999999999Ethernet000002............	100gbase-x-qsfp28	f	\N	\N	\N	441929ac-d4e0-4240-b224-937aedb59993	\N	\N
d1db843d-6e55-4288-82b3-c9e8f61e338b	{}	Ethernet3			\N	t	\N	\N		9999999999999999Ethernet000003............	100gbase-x-qsfp28	f	\N	\N	\N	441929ac-d4e0-4240-b224-937aedb59993	\N	\N
76b3caa8-d09b-4707-bd82-b36dd4b61319	{}	Ethernet4			\N	t	\N	\N		9999999999999999Ethernet000004............	100gbase-x-qsfp28	f	\N	\N	\N	441929ac-d4e0-4240-b224-937aedb59993	\N	\N
ffffe25f-2f43-4947-a6ff-8cd56e2c56ac	{}	Ethernet5			\N	t	\N	\N		9999999999999999Ethernet000005............	100gbase-x-qsfp28	f	\N	\N	\N	441929ac-d4e0-4240-b224-937aedb59993	\N	\N
38933329-cb93-4408-b504-09a98d84ca3c	{}	Ethernet6			\N	t	\N	\N		9999999999999999Ethernet000006............	100gbase-x-qsfp28	f	\N	\N	\N	441929ac-d4e0-4240-b224-937aedb59993	\N	\N
cc2a4d18-d2ef-4431-b92e-4acfad9f5fe0	{}	Ethernet7			\N	t	\N	\N		9999999999999999Ethernet000007............	100gbase-x-qsfp28	f	\N	\N	\N	441929ac-d4e0-4240-b224-937aedb59993	\N	\N
d5f51b51-14e2-4c72-9141-8536bd6d2a81	{}	Ethernet8			\N	t	\N	\N		9999999999999999Ethernet000008............	100gbase-x-qsfp28	f	\N	\N	\N	441929ac-d4e0-4240-b224-937aedb59993	\N	\N
258a15d3-80c9-4aba-a494-67019b55b7a3	{}	Management1			\N	t	\N	\N		9999999999999999Management000001............	1000base-x-gbic	t	\N	\N	\N	441929ac-d4e0-4240-b224-937aedb59993	\N	\N
66ba09e9-2ea5-49cb-8036-416ddbddcdcb	{}	Ethernet2			\N	t	\N	\N		9999999999999999Ethernet000002............	100gbase-x-qsfp28	f	\N	\N	\N	38ce7334-00da-47fd-bcaf-d0cf58528951	\N	\N
22d5a229-0a59-4728-8d33-f61d334f2d74	{}	Ethernet3			\N	t	\N	\N		9999999999999999Ethernet000003............	100gbase-x-qsfp28	f	\N	\N	\N	38ce7334-00da-47fd-bcaf-d0cf58528951	\N	\N
0e793afe-f34d-4459-8648-d038d7fa51ca	{}	Ethernet4			\N	t	\N	\N		9999999999999999Ethernet000004............	100gbase-x-qsfp28	f	\N	\N	\N	38ce7334-00da-47fd-bcaf-d0cf58528951	\N	\N
1f394c81-7970-458a-9d21-bd8b25f7e4c2	{}	Ethernet5			\N	t	\N	\N		9999999999999999Ethernet000005............	100gbase-x-qsfp28	f	\N	\N	\N	38ce7334-00da-47fd-bcaf-d0cf58528951	\N	\N
d14be271-c626-4632-8246-36036fcd2c15	{}	Ethernet6			\N	t	\N	\N		9999999999999999Ethernet000006............	100gbase-x-qsfp28	f	\N	\N	\N	38ce7334-00da-47fd-bcaf-d0cf58528951	\N	\N
5d68e998-80df-4a91-a697-66e13214ed3f	{}	Ethernet7			\N	t	\N	\N		9999999999999999Ethernet000007............	100gbase-x-qsfp28	f	\N	\N	\N	38ce7334-00da-47fd-bcaf-d0cf58528951	\N	\N
df3978ab-fc4f-4dad-91a7-a63fbb265f45	{}	Ethernet8			\N	t	\N	\N		9999999999999999Ethernet000008............	100gbase-x-qsfp28	f	\N	\N	\N	38ce7334-00da-47fd-bcaf-d0cf58528951	\N	\N
e652ba46-8bce-4c83-9163-fa68a74c5626	{}	Management1			\N	t	\N	\N		9999999999999999Management000001............	1000base-x-gbic	t	\N	\N	\N	38ce7334-00da-47fd-bcaf-d0cf58528951	\N	\N
14d76195-2761-4a89-8a2e-e1a8b91c7889	{}	Ethernet2			\N	t	\N	\N		9999999999999999Ethernet000002............	100gbase-x-qsfp28	f	\N	\N	\N	9da0d7c7-9756-44e8-999b-001b4e22a9b1	\N	\N
bada1ade-4b67-46f8-b564-96fd6198b9bc	{}	Ethernet3			\N	t	\N	\N		9999999999999999Ethernet000003............	100gbase-x-qsfp28	f	\N	\N	\N	9da0d7c7-9756-44e8-999b-001b4e22a9b1	\N	\N
f8dabd3b-a933-434d-a46f-b83c8c10bd21	{}	Ethernet4			\N	t	\N	\N		9999999999999999Ethernet000004............	100gbase-x-qsfp28	f	\N	\N	\N	9da0d7c7-9756-44e8-999b-001b4e22a9b1	\N	\N
517d7e7a-413c-474f-885f-f7390f4e547d	{}	Ethernet5			\N	t	\N	\N		9999999999999999Ethernet000005............	100gbase-x-qsfp28	f	\N	\N	\N	9da0d7c7-9756-44e8-999b-001b4e22a9b1	\N	\N
1897fbc2-8564-4994-9625-b02e18319f8a	{}	Ethernet6			\N	t	\N	\N		9999999999999999Ethernet000006............	100gbase-x-qsfp28	f	\N	\N	\N	9da0d7c7-9756-44e8-999b-001b4e22a9b1	\N	\N
9e02ea26-91de-40be-b8b8-1112a931e7ec	{}	Ethernet7			\N	t	\N	\N		9999999999999999Ethernet000007............	100gbase-x-qsfp28	f	\N	\N	\N	9da0d7c7-9756-44e8-999b-001b4e22a9b1	\N	\N
03205336-8b6e-46ab-bf3e-dd1003cddd75	{}	Ethernet8			\N	t	\N	\N		9999999999999999Ethernet000008............	100gbase-x-qsfp28	f	\N	\N	\N	9da0d7c7-9756-44e8-999b-001b4e22a9b1	\N	\N
a69dc0ec-b247-4e6d-8171-4090786f009d	{}	Management1			\N	t	\N	\N		9999999999999999Management000001............	1000base-x-gbic	t	\N	\N	\N	9da0d7c7-9756-44e8-999b-001b4e22a9b1	\N	\N
f718d82d-9f5b-4e1e-a5ab-06ae9c52f6fb	{}	Ethernet2			\N	t	\N	\N		9999999999999999Ethernet000002............	100gbase-x-qsfp28	f	\N	\N	\N	f63be1eb-4e67-4962-bbdc-0e9c8c823159	\N	\N
0ff074cc-41b6-4442-b1dc-55d9b200279a	{}	Ethernet3			\N	t	\N	\N		9999999999999999Ethernet000003............	100gbase-x-qsfp28	f	\N	\N	\N	f63be1eb-4e67-4962-bbdc-0e9c8c823159	\N	\N
78dd1b5c-b3ed-424c-8ee1-f73644f23a56	{}	Ethernet4			\N	t	\N	\N		9999999999999999Ethernet000004............	100gbase-x-qsfp28	f	\N	\N	\N	f63be1eb-4e67-4962-bbdc-0e9c8c823159	\N	\N
2ae835d7-f7d8-480f-9031-7a8c219503b8	{}	Ethernet5			\N	t	\N	\N		9999999999999999Ethernet000005............	100gbase-x-qsfp28	f	\N	\N	\N	f63be1eb-4e67-4962-bbdc-0e9c8c823159	\N	\N
098b8af7-c2f2-4687-aa91-2574c9d76c1e	{}	Ethernet6			\N	t	\N	\N		9999999999999999Ethernet000006............	100gbase-x-qsfp28	f	\N	\N	\N	f63be1eb-4e67-4962-bbdc-0e9c8c823159	\N	\N
7687d391-b66b-4f09-abec-8e6829ae6514	{}	Ethernet7			\N	t	\N	\N		9999999999999999Ethernet000007............	100gbase-x-qsfp28	f	\N	\N	\N	f63be1eb-4e67-4962-bbdc-0e9c8c823159	\N	\N
7486ed99-cebe-4767-91ab-ca6140104a15	{}	Ethernet8			\N	t	\N	\N		9999999999999999Ethernet000008............	100gbase-x-qsfp28	f	\N	\N	\N	f63be1eb-4e67-4962-bbdc-0e9c8c823159	\N	\N
68aa545b-c125-4af7-ab0a-ac4f908bd1c0	{}	Management1			\N	t	\N	\N		9999999999999999Management000001............	1000base-x-gbic	t	\N	\N	\N	f63be1eb-4e67-4962-bbdc-0e9c8c823159	\N	\N
a0f7dd50-f741-4090-8122-217f3484fc3a	{}	Ethernet2			\N	t	\N	\N		9999999999999999Ethernet000002............	100gbase-x-qsfp28	f	\N	\N	\N	9bd966fe-6ad8-48e5-92f8-d8afd0394c33	\N	\N
395eea26-182a-46f7-ad2e-dbc1aa9edc4b	{}	Ethernet3			\N	t	\N	\N		9999999999999999Ethernet000003............	100gbase-x-qsfp28	f	\N	\N	\N	9bd966fe-6ad8-48e5-92f8-d8afd0394c33	\N	\N
32673b11-96ee-4c09-a4e7-1e99a70aeb8a	{}	Ethernet4			\N	t	\N	\N		9999999999999999Ethernet000004............	100gbase-x-qsfp28	f	\N	\N	\N	9bd966fe-6ad8-48e5-92f8-d8afd0394c33	\N	\N
f5fbd10d-283f-4089-8cb7-43b6ef1e5e7a	{}	Ethernet5			\N	t	\N	\N		9999999999999999Ethernet000005............	100gbase-x-qsfp28	f	\N	\N	\N	9bd966fe-6ad8-48e5-92f8-d8afd0394c33	\N	\N
471bc7c1-87c3-41ff-af0d-f185e1fecb7d	{}	Ethernet6			\N	t	\N	\N		9999999999999999Ethernet000006............	100gbase-x-qsfp28	f	\N	\N	\N	9bd966fe-6ad8-48e5-92f8-d8afd0394c33	\N	\N
d97f5019-1f7a-4acc-ae6a-527d64dabf0a	{}	Ethernet7			\N	t	\N	\N		9999999999999999Ethernet000007............	100gbase-x-qsfp28	f	\N	\N	\N	9bd966fe-6ad8-48e5-92f8-d8afd0394c33	\N	\N
aa21aff4-1a13-4fbf-80ee-832ee0c3bc5e	{}	Ethernet8			\N	t	\N	\N		9999999999999999Ethernet000008............	100gbase-x-qsfp28	f	\N	\N	\N	9bd966fe-6ad8-48e5-92f8-d8afd0394c33	\N	\N
ff81dc2d-10c2-4df7-9ac0-9bd451cb0497	{}	Management1			\N	t	\N	\N		9999999999999999Management000001............	1000base-x-gbic	t	\N	\N	\N	9bd966fe-6ad8-48e5-92f8-d8afd0394c33	\N	\N
cfa5fc80-50ef-4054-aba6-9bc1065f186b	{}	Ethernet2			\N	t	\N	\N		9999999999999999Ethernet000002............	100gbase-x-qsfp28	f	\N	\N	\N	8b12c575-582d-41ff-a6ba-2fbf6ee1e1ce	\N	\N
0d5cf2c7-858e-4cd4-9b4a-6410ea44b0d3	{}	Ethernet3			\N	t	\N	\N		9999999999999999Ethernet000003............	100gbase-x-qsfp28	f	\N	\N	\N	8b12c575-582d-41ff-a6ba-2fbf6ee1e1ce	\N	\N
03226426-9edd-4c3b-91fd-facd2b89b6cf	{}	Ethernet4			\N	t	\N	\N		9999999999999999Ethernet000004............	100gbase-x-qsfp28	f	\N	\N	\N	8b12c575-582d-41ff-a6ba-2fbf6ee1e1ce	\N	\N
d7935a14-9c1a-41fd-910e-200a6e44ed6c	{}	Ethernet5			\N	t	\N	\N		9999999999999999Ethernet000005............	100gbase-x-qsfp28	f	\N	\N	\N	8b12c575-582d-41ff-a6ba-2fbf6ee1e1ce	\N	\N
6448cbf2-b99e-4113-a3d1-b19b22809b8d	{}	Ethernet6			\N	t	\N	\N		9999999999999999Ethernet000006............	100gbase-x-qsfp28	f	\N	\N	\N	8b12c575-582d-41ff-a6ba-2fbf6ee1e1ce	\N	\N
3ef8fa66-5895-470f-b852-8062ca6aad9e	{}	Ethernet1			e8a583fb-bc0f-4ddd-9494-bf5a3807ab27	t	\N	\N		9999999999999999Ethernet000001............	100gbase-x-qsfp28	f	37	9552b078-4156-48c8-894f-5bab298a87f9	dcb0a69d-bf42-4f76-92f0-c28b04c8ae00	9da0d7c7-9756-44e8-999b-001b4e22a9b1	\N	\N
ddda2a2b-7e6a-4561-b14d-d5fd8be3b208	{}	Ethernet1			e374430a-c416-4be5-9b60-0a02c26179fa	t	\N	\N		9999999999999999Ethernet000001............	100gbase-x-qsfp28	f	37	c8ab573b-133a-49f2-8d6b-e2783b03f4b4	a0f17f93-c5b6-41f0-8224-34cbf449f8e6	f63be1eb-4e67-4962-bbdc-0e9c8c823159	\N	\N
4cbdcc51-8158-425d-820b-c00d5fcced2e	{}	Ethernet1			99565ef2-08c2-42ea-a350-846263ca50dd	t	\N	\N		9999999999999999Ethernet000001............	100gbase-x-qsfp28	f	37	65783f3f-6158-4906-9355-6197f3959796	3014a667-0703-41c7-8025-c3016633e815	8b12c575-582d-41ff-a6ba-2fbf6ee1e1ce	\N	\N
5e307811-6819-4648-9567-9410d8b6a613	{}	Ethernet7			\N	t	\N	\N		9999999999999999Ethernet000007............	100gbase-x-qsfp28	f	\N	\N	\N	8b12c575-582d-41ff-a6ba-2fbf6ee1e1ce	\N	\N
c75b6909-8ea7-4383-abbb-abcf58f67af7	{}	Ethernet8			\N	t	\N	\N		9999999999999999Ethernet000008............	100gbase-x-qsfp28	f	\N	\N	\N	8b12c575-582d-41ff-a6ba-2fbf6ee1e1ce	\N	\N
41f4c4cf-a6fe-4904-ae9e-eb2d29316f25	{}	Management1			\N	t	\N	\N		9999999999999999Management000001............	1000base-x-gbic	t	\N	\N	\N	8b12c575-582d-41ff-a6ba-2fbf6ee1e1ce	\N	\N
7174dbe6-b821-41f8-b78c-5cb5dc133991	{}	Ethernet2			\N	t	\N	\N		9999999999999999Ethernet000002............	100gbase-x-qsfp28	f	\N	\N	\N	613b0222-eea1-42b0-bd99-59b552509213	\N	\N
d4f7bacc-833e-43b8-a4d5-27e9295fb57d	{}	Ethernet3			\N	t	\N	\N		9999999999999999Ethernet000003............	100gbase-x-qsfp28	f	\N	\N	\N	613b0222-eea1-42b0-bd99-59b552509213	\N	\N
aa7248c8-6e23-4baf-ae19-ab962961a5a6	{}	Ethernet4			\N	t	\N	\N		9999999999999999Ethernet000004............	100gbase-x-qsfp28	f	\N	\N	\N	613b0222-eea1-42b0-bd99-59b552509213	\N	\N
b9faf29e-aa8b-420c-8b7c-dd562b102b33	{}	Ethernet5			\N	t	\N	\N		9999999999999999Ethernet000005............	100gbase-x-qsfp28	f	\N	\N	\N	613b0222-eea1-42b0-bd99-59b552509213	\N	\N
024eb3d2-3df2-42e9-aa06-594207555788	{}	Ethernet6			\N	t	\N	\N		9999999999999999Ethernet000006............	100gbase-x-qsfp28	f	\N	\N	\N	613b0222-eea1-42b0-bd99-59b552509213	\N	\N
6999f6ae-1972-4fca-8b00-21066ccd8785	{}	Ethernet7			\N	t	\N	\N		9999999999999999Ethernet000007............	100gbase-x-qsfp28	f	\N	\N	\N	613b0222-eea1-42b0-bd99-59b552509213	\N	\N
e2bf91c3-4de7-4b3c-b6b9-055b7e450598	{}	Ethernet8			\N	t	\N	\N		9999999999999999Ethernet000008............	100gbase-x-qsfp28	f	\N	\N	\N	613b0222-eea1-42b0-bd99-59b552509213	\N	\N
60230bcd-aca1-4034-90c4-69e95b7e21d9	{}	Management1			\N	t	\N	\N		9999999999999999Management000001............	1000base-x-gbic	t	\N	\N	\N	613b0222-eea1-42b0-bd99-59b552509213	\N	\N
8e75457e-3d04-4208-a192-48bf707f463b	{}	Management1			\N	t	\N	\N		9999999999999999Management000001............	1000base-x-gbic	t	\N	\N	\N	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	\N	\N
18dbde86-8ffa-4ed8-8508-a020e2edef37	{}	Ethernet1			\N	t	\N	\N		9999999999999999Ethernet000001............	100gbase-x-qsfp28	f	\N	\N	\N	419b6e6a-71f7-4ab1-bbb4-56d7be97f946	\N	\N
5a537cf3-f870-42a2-981c-77690ae8f0c2	{}	Ethernet2			\N	t	\N	\N		9999999999999999Ethernet000002............	100gbase-x-qsfp28	f	\N	\N	\N	419b6e6a-71f7-4ab1-bbb4-56d7be97f946	\N	\N
c5ab629b-4bdb-4056-a4ec-6a65904105cb	{}	Ethernet3			\N	t	\N	\N		9999999999999999Ethernet000003............	100gbase-x-qsfp28	f	\N	\N	\N	419b6e6a-71f7-4ab1-bbb4-56d7be97f946	\N	\N
36816871-3b60-4d86-a773-2b470d4c23d0	{}	Ethernet4			\N	t	\N	\N		9999999999999999Ethernet000004............	100gbase-x-qsfp28	f	\N	\N	\N	419b6e6a-71f7-4ab1-bbb4-56d7be97f946	\N	\N
9184d978-a3c4-4a63-a3ca-2279154e2e65	{}	Ethernet5			\N	t	\N	\N		9999999999999999Ethernet000005............	100gbase-x-qsfp28	f	\N	\N	\N	419b6e6a-71f7-4ab1-bbb4-56d7be97f946	\N	\N
9e7c114e-e2ac-4d8f-a7b4-73092c2d1533	{}	Ethernet6			\N	t	\N	\N		9999999999999999Ethernet000006............	100gbase-x-qsfp28	f	\N	\N	\N	419b6e6a-71f7-4ab1-bbb4-56d7be97f946	\N	\N
030e712f-3505-4e8e-8663-57f207217440	{}	Ethernet7			\N	t	\N	\N		9999999999999999Ethernet000007............	100gbase-x-qsfp28	f	\N	\N	\N	419b6e6a-71f7-4ab1-bbb4-56d7be97f946	\N	\N
2ab285b7-0ead-458a-a88b-274a24d52612	{}	Ethernet8			\N	t	\N	\N		9999999999999999Ethernet000008............	100gbase-x-qsfp28	f	\N	\N	\N	419b6e6a-71f7-4ab1-bbb4-56d7be97f946	\N	\N
27fbf521-0b62-4f98-a86d-ad89c273ad6e	{}	Management1			\N	t	\N	\N		9999999999999999Management000001............	1000base-x-gbic	t	\N	\N	\N	419b6e6a-71f7-4ab1-bbb4-56d7be97f946	\N	\N
6b371cfc-7c23-430a-9c9a-17374fe03ce7	{}	Ethernet2			\N	t	\N	\N		9999999999999999Ethernet000002............	100gbase-x-qsfp28	f	\N	\N	\N	8b091d4d-5916-4af2-a38b-7203150ec519	\N	\N
246fce60-6c4f-42ee-9267-c64291729aa3	{}	Ethernet3			\N	t	\N	\N		9999999999999999Ethernet000003............	100gbase-x-qsfp28	f	\N	\N	\N	8b091d4d-5916-4af2-a38b-7203150ec519	\N	\N
835822d2-38bf-4ac2-9564-f0ead0212ffd	{}	Ethernet4			\N	t	\N	\N		9999999999999999Ethernet000004............	100gbase-x-qsfp28	f	\N	\N	\N	8b091d4d-5916-4af2-a38b-7203150ec519	\N	\N
3bb44c2d-6f64-4b3f-9995-61790e91201f	{}	Ethernet5			\N	t	\N	\N		9999999999999999Ethernet000005............	100gbase-x-qsfp28	f	\N	\N	\N	8b091d4d-5916-4af2-a38b-7203150ec519	\N	\N
4f47d87c-33c5-446c-b80e-c0a509ddc0a3	{}	Ethernet6			\N	t	\N	\N		9999999999999999Ethernet000006............	100gbase-x-qsfp28	f	\N	\N	\N	8b091d4d-5916-4af2-a38b-7203150ec519	\N	\N
4b11680e-d632-4031-bf3a-bc3d7481ad9b	{}	Ethernet7			\N	t	\N	\N		9999999999999999Ethernet000007............	100gbase-x-qsfp28	f	\N	\N	\N	8b091d4d-5916-4af2-a38b-7203150ec519	\N	\N
73ffa35f-934d-4004-b21d-5aebb4ab2626	{}	Ethernet8			\N	t	\N	\N		9999999999999999Ethernet000008............	100gbase-x-qsfp28	f	\N	\N	\N	8b091d4d-5916-4af2-a38b-7203150ec519	\N	\N
674909a9-4462-4b4b-85eb-f2822f7c7806	{}	Management1			\N	t	\N	\N		9999999999999999Management000001............	1000base-x-gbic	t	\N	\N	\N	8b091d4d-5916-4af2-a38b-7203150ec519	\N	\N
4e12f877-17c4-4443-a889-1df8bc033964	{}	Ethernet1			6fc6575c-4251-45dc-bd98-406c5fa98129	t	\N	\N		9999999999999999Ethernet000001............	100gbase-x-qsfp28	f	37	d9dd1c96-b7db-4d34-98b7-674523179ef2	1018d4e1-582e-4ef3-8692-6fa9911263d4	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	\N	\N
6fc6575c-4251-45dc-bd98-406c5fa98129	{}	Ethernet1			4e12f877-17c4-4443-a889-1df8bc033964	t	\N	\N		9999999999999999Ethernet000001............	100gbase-x-qsfp28	f	37	8d855d83-91a8-4822-9a02-6442c0b6c7ac	1018d4e1-582e-4ef3-8692-6fa9911263d4	8b091d4d-5916-4af2-a38b-7203150ec519	\N	\N
69d33a09-9e17-47ea-978e-73c5be3bd2c6	{}	Ethernet2			6658fefb-a245-441e-a6f0-ad09c76db1fa	t	\N	\N		9999999999999999Ethernet000002............	100gbase-x-qsfp28	f	37	2661186c-3b7a-489a-a473-28be47e0acd1	6d7b518c-fae1-4a82-88b2-4325656230f3	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	\N	\N
6658fefb-a245-441e-a6f0-ad09c76db1fa	{}	Ethernet1			69d33a09-9e17-47ea-978e-73c5be3bd2c6	t	\N	\N		9999999999999999Ethernet000001............	100gbase-x-qsfp28	f	37	c9b3898d-9cb7-4221-a6bc-657ae6f106a4	6d7b518c-fae1-4a82-88b2-4325656230f3	441929ac-d4e0-4240-b224-937aedb59993	\N	\N
02919cfe-55e6-462d-b284-8b4f10634875	{}	Ethernet3			b190ec86-4fdd-4e52-b1d5-cf303161085c	t	\N	\N		9999999999999999Ethernet000003............	100gbase-x-qsfp28	f	37	d404922c-8d53-44e2-915c-ab6da148fdb6	00dfa530-7ede-4f71-a6c3-9e99f208f3c8	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	\N	\N
b190ec86-4fdd-4e52-b1d5-cf303161085c	{}	Ethernet1			02919cfe-55e6-462d-b284-8b4f10634875	t	\N	\N		9999999999999999Ethernet000001............	100gbase-x-qsfp28	f	37	3cd7b042-abf0-4748-b708-8db7c98be5d3	00dfa530-7ede-4f71-a6c3-9e99f208f3c8	38ce7334-00da-47fd-bcaf-d0cf58528951	\N	\N
e8a583fb-bc0f-4ddd-9494-bf5a3807ab27	{}	Ethernet4			3ef8fa66-5895-470f-b852-8062ca6aad9e	t	\N	\N		9999999999999999Ethernet000004............	100gbase-x-qsfp28	f	37	3017061c-33ba-4bc8-905b-0c2741b20304	dcb0a69d-bf42-4f76-92f0-c28b04c8ae00	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	\N	\N
e374430a-c416-4be5-9b60-0a02c26179fa	{}	Ethernet5			ddda2a2b-7e6a-4561-b14d-d5fd8be3b208	t	\N	\N		9999999999999999Ethernet000005............	100gbase-x-qsfp28	f	37	1a8852a3-4ba7-4474-83f8-c15090ca6743	a0f17f93-c5b6-41f0-8224-34cbf449f8e6	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	\N	\N
146ee8e1-d203-4afa-a044-e7ee05ead7a3	{}	Ethernet6			426204a6-59a7-4925-930b-79fd09e657e1	t	\N	\N		9999999999999999Ethernet000006............	100gbase-x-qsfp28	f	37	3c319f8e-915f-403f-9777-e60a053c5687	2a987237-4fca-4df6-a3b5-a944726fd703	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	\N	\N
426204a6-59a7-4925-930b-79fd09e657e1	{}	Ethernet1			146ee8e1-d203-4afa-a044-e7ee05ead7a3	t	\N	\N		9999999999999999Ethernet000001............	100gbase-x-qsfp28	f	37	0b04629a-0187-471f-a9ab-37452b4fbe84	2a987237-4fca-4df6-a3b5-a944726fd703	9bd966fe-6ad8-48e5-92f8-d8afd0394c33	\N	\N
99565ef2-08c2-42ea-a350-846263ca50dd	{}	Ethernet7			4cbdcc51-8158-425d-820b-c00d5fcced2e	t	\N	\N		9999999999999999Ethernet000007............	100gbase-x-qsfp28	f	37	a4579efb-85d3-4a78-baf0-11aa72bf232c	3014a667-0703-41c7-8025-c3016633e815	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	\N	\N
cad0ece2-249a-4cc6-a987-889dfbb1192d	{}	Ethernet8			7c7bac10-0cc5-4e8d-b5c0-63521d392c57	t	\N	\N		9999999999999999Ethernet000008............	100gbase-x-qsfp28	f	37	1f89672e-38fe-4b1c-b333-d3346fbd8bf6	4a08b3f6-05d3-44a6-86dd-a3f0835831b1	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	\N	\N
7c7bac10-0cc5-4e8d-b5c0-63521d392c57	{}	Ethernet1			cad0ece2-249a-4cc6-a987-889dfbb1192d	t	\N	\N		9999999999999999Ethernet000001............	100gbase-x-qsfp28	f	37	2d81d54e-fc2a-426e-acd6-db54ccf2c827	4a08b3f6-05d3-44a6-86dd-a3f0835831b1	613b0222-eea1-42b0-bd99-59b552509213	\N	\N
\.


--
-- Data for Name: dcim_interface_tagged_vlans; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_interface_tagged_vlans (id, interface_id, vlan_id) FROM stdin;
\.


--
-- Data for Name: dcim_interfacetemplate; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_interfacetemplate (id, _custom_field_data, name, label, description, _name, type, mgmt_only, device_type_id) FROM stdin;
da9ead6c-d183-4667-875d-3860222faa7f	{}	Management0			9999999999999999Management000000............	virtual	t	1002d370-d35d-4045-af85-9e5455f2b7b6
986d7805-7dd1-4d17-ad55-2a2bf1d8fb13	{}	Ethernet1			9999999999999999Ethernet000001............	100gbase-x-qsfp28	f	1e861408-ae79-4a0c-9c52-db8f610de947
c5c234c2-c856-4392-9880-99542bb6e69f	{}	Ethernet2			9999999999999999Ethernet000002............	100gbase-x-qsfp28	f	1e861408-ae79-4a0c-9c52-db8f610de947
a0439b3a-5950-463d-bca9-6c25ec2b1e76	{}	Ethernet3			9999999999999999Ethernet000003............	100gbase-x-qsfp28	f	1e861408-ae79-4a0c-9c52-db8f610de947
900e9dd1-0cca-4104-95b4-1050af8d396c	{}	Ethernet4			9999999999999999Ethernet000004............	100gbase-x-qsfp28	f	1e861408-ae79-4a0c-9c52-db8f610de947
1080fc83-6352-44f0-bffe-0b4650c03adb	{}	Ethernet5			9999999999999999Ethernet000005............	100gbase-x-qsfp28	f	1e861408-ae79-4a0c-9c52-db8f610de947
fd7e1e73-993c-4a65-8b13-2c5701bf6eed	{}	Ethernet6			9999999999999999Ethernet000006............	100gbase-x-qsfp28	f	1e861408-ae79-4a0c-9c52-db8f610de947
92172ed8-4bed-49e9-9733-c724ebd0024a	{}	Ethernet7			9999999999999999Ethernet000007............	100gbase-x-qsfp28	f	1e861408-ae79-4a0c-9c52-db8f610de947
0cd1eb2f-e0fc-4927-9a75-1cac1acca873	{}	Ethernet8			9999999999999999Ethernet000008............	100gbase-x-qsfp28	f	1e861408-ae79-4a0c-9c52-db8f610de947
caf73d5b-76d5-47d5-9366-bb86b9ffba3e	{}	Management1			9999999999999999Management000001............	1000base-x-gbic	t	1e861408-ae79-4a0c-9c52-db8f610de947
\.


--
-- Data for Name: dcim_inventoryitem; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_inventoryitem (id, _custom_field_data, name, _name, label, description, part_id, serial, asset_tag, discovered, lft, rght, tree_id, level, device_id, manufacturer_id, parent_id) FROM stdin;
\.


--
-- Data for Name: dcim_manufacturer; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_manufacturer (id, created, last_updated, _custom_field_data, name, slug, description) FROM stdin;
a9874446-d447-4c93-a8c5-381eaa3655bc	2021-05-15	2021-05-15 04:36:07.56211-05	{}	Arista	arista	
\.


--
-- Data for Name: dcim_platform; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_platform (id, created, last_updated, _custom_field_data, name, slug, napalm_driver, napalm_args, description, manufacturer_id) FROM stdin;
5599c0c9-95b2-42c7-9723-4bb3a0e821a2	2021-05-15	2021-05-15 04:36:52.171544-05	{}	EOS	eos	eos	\N		a9874446-d447-4c93-a8c5-381eaa3655bc
\.


--
-- Data for Name: dcim_powerfeed; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_powerfeed (id, created, last_updated, _custom_field_data, _cable_peer_id, name, type, supply, phase, voltage, amperage, max_utilization, available_power, comments, _cable_peer_type_id, _path_id, cable_id, power_panel_id, rack_id, status_id) FROM stdin;
\.


--
-- Data for Name: dcim_poweroutlet; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_poweroutlet (id, _custom_field_data, name, _name, label, description, _cable_peer_id, type, feed_leg, _cable_peer_type_id, _path_id, cable_id, device_id, power_port_id) FROM stdin;
\.


--
-- Data for Name: dcim_poweroutlettemplate; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_poweroutlettemplate (id, _custom_field_data, name, _name, label, description, type, feed_leg, device_type_id, power_port_id) FROM stdin;
\.


--
-- Data for Name: dcim_powerpanel; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_powerpanel (id, created, last_updated, _custom_field_data, name, rack_group_id, site_id) FROM stdin;
\.


--
-- Data for Name: dcim_powerport; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_powerport (id, _custom_field_data, name, _name, label, description, _cable_peer_id, type, maximum_draw, allocated_draw, _cable_peer_type_id, _path_id, cable_id, device_id) FROM stdin;
\.


--
-- Data for Name: dcim_powerporttemplate; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_powerporttemplate (id, _custom_field_data, name, _name, label, description, type, maximum_draw, allocated_draw, device_type_id) FROM stdin;
\.


--
-- Data for Name: dcim_rack; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_rack (id, created, last_updated, _custom_field_data, name, _name, facility_id, serial, asset_tag, type, width, u_height, desc_units, outer_width, outer_depth, outer_unit, comments, group_id, role_id, site_id, status_id, tenant_id) FROM stdin;
\.


--
-- Data for Name: dcim_rackgroup; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_rackgroup (id, created, last_updated, _custom_field_data, name, slug, description, lft, rght, tree_id, level, parent_id, site_id) FROM stdin;
\.


--
-- Data for Name: dcim_rackreservation; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_rackreservation (id, created, last_updated, _custom_field_data, units, description, rack_id, tenant_id, user_id) FROM stdin;
\.


--
-- Data for Name: dcim_rackrole; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_rackrole (id, created, last_updated, _custom_field_data, name, slug, color, description) FROM stdin;
\.


--
-- Data for Name: dcim_rearport; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_rearport (id, _custom_field_data, name, _name, label, description, _cable_peer_id, type, positions, _cable_peer_type_id, cable_id, device_id) FROM stdin;
\.


--
-- Data for Name: dcim_rearporttemplate; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_rearporttemplate (id, _custom_field_data, name, _name, label, description, type, positions, device_type_id) FROM stdin;
\.


--
-- Data for Name: dcim_region; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_region (id, created, last_updated, _custom_field_data, name, slug, description, lft, rght, tree_id, level, parent_id) FROM stdin;
\.


--
-- Data for Name: dcim_site; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_site (id, created, last_updated, _custom_field_data, name, _name, slug, facility, asn, time_zone, description, physical_address, shipping_address, latitude, longitude, contact_name, contact_phone, contact_email, comments, region_id, status_id, tenant_id) FROM stdin;
8b650f31-db20-46bf-b135-0e20825ce319	2021-05-15	2021-05-15 04:48:49.601466-05	{}	AVD CVP Lab	AVD CVP Lab	avd-cvp-lab		\N	Europe/Paris	EVE-NG Lab			\N	\N					\N	9b0fe008-789b-4390-81b8-d03f684af1dc	\N
f37de776-152a-411a-ae05-d9004523eebc	2021-05-15	2021-05-15 04:49:05.164156-05	{}	AVD eAPI Lab	AVD eAPI Lab	avd-eapi-lab		\N					\N	\N					\N	9b0fe008-789b-4390-81b8-d03f684af1dc	\N
\.


--
-- Data for Name: dcim_virtualchassis; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.dcim_virtualchassis (id, created, last_updated, _custom_field_data, name, domain, master_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-05-15 05:52:17.396487-05	3cff36c9-4125-45cf-8cfd-9569def50781	7f4153 (tom)	1	[{"added": {}}]	81	8cfb9237-fa62-48f4-b537-2411844e8223
2	2021-05-15 09:45:05.793023-05	2784d717-ff80-49a1-aa87-b97f01fb7bfb	4055d4 (tom)	1	[{"added": {}}]	81	8cfb9237-fa62-48f4-b537-2411844e8223
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	dcim	device
2	dcim	site
3	dcim	rack
4	dcim	cable
5	dcim	powerfeed
6	circuits	circuit
7	ipam	prefix
8	ipam	ipaddress
9	ipam	vlan
10	virtualization	virtualmachine
11	admin	logentry
12	auth	permission
13	auth	group
14	contenttypes	contenttype
15	sessions	session
16	social_django	association
17	social_django	code
18	social_django	nonce
19	social_django	usersocialauth
20	social_django	partial
21	taggit	tag
22	taggit	taggeditem
23	circuits	circuittermination
24	circuits	circuittype
25	circuits	provider
26	dcim	cablepath
27	dcim	consoleport
28	dcim	consoleporttemplate
29	dcim	consoleserverport
30	dcim	consoleserverporttemplate
31	dcim	devicebay
32	dcim	devicebaytemplate
33	dcim	devicerole
34	dcim	devicetype
35	dcim	frontport
36	dcim	frontporttemplate
37	dcim	interface
38	dcim	interfacetemplate
39	dcim	inventoryitem
40	dcim	manufacturer
41	dcim	platform
42	dcim	poweroutlet
43	dcim	poweroutlettemplate
44	dcim	powerpanel
45	dcim	powerport
46	dcim	powerporttemplate
47	dcim	rackgroup
48	dcim	rackreservation
49	dcim	rackrole
50	dcim	rearport
51	dcim	rearporttemplate
52	dcim	region
53	dcim	virtualchassis
54	ipam	aggregate
55	ipam	rir
56	ipam	role
57	ipam	routetarget
58	ipam	vrf
59	ipam	vlangroup
60	ipam	service
61	extras	job
62	extras	configcontext
63	extras	customfield
64	extras	customfieldchoice
65	extras	customlink
66	extras	exporttemplate
67	extras	gitrepository
68	extras	imageattachment
69	extras	jobresult
70	extras	relationship
71	extras	tag
72	extras	webhook
73	extras	taggeditem
74	extras	status
75	extras	relationshipassociation
76	extras	objectchange
77	tenancy	tenantgroup
78	tenancy	tenant
79	users	user
80	users	admingroup
81	users	token
82	users	objectpermission
83	virtualization	cluster
84	virtualization	clustergroup
85	virtualization	clustertype
86	virtualization	vminterface
100	nautobot_device_onboarding	onboardingtask
101	nautobot_device_onboarding	onboardingdevice
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-05-06 21:01:04.114623-05
2	contenttypes	0002_remove_content_type_name	2021-05-06 21:01:04.124262-05
3	auth	0001_initial	2021-05-06 21:01:04.14871-05
4	auth	0002_alter_permission_name_max_length	2021-05-06 21:01:04.172318-05
5	auth	0003_alter_user_email_max_length	2021-05-06 21:01:04.178068-05
6	auth	0004_alter_user_username_opts	2021-05-06 21:01:04.183688-05
7	auth	0005_alter_user_last_login_null	2021-05-06 21:01:04.189616-05
8	auth	0006_require_contenttypes_0002	2021-05-06 21:01:04.191951-05
9	auth	0007_alter_validators_add_error_messages	2021-05-06 21:01:04.198148-05
10	auth	0008_alter_user_username_max_length	2021-05-06 21:01:04.204834-05
11	auth	0009_alter_user_last_name_max_length	2021-05-06 21:01:04.210783-05
12	auth	0010_alter_group_name_max_length	2021-05-06 21:01:04.217173-05
13	auth	0011_update_proxy_permissions	2021-05-06 21:01:04.224595-05
14	auth	0012_alter_user_first_name_max_length	2021-05-06 21:01:04.230543-05
15	users	0001_initial	2021-05-06 21:01:04.286949-05
16	admin	0001_initial	2021-05-06 21:01:04.360694-05
17	admin	0002_logentry_remove_auto_add	2021-05-06 21:01:04.380042-05
18	admin	0003_logentry_add_action_flag_choices	2021-05-06 21:01:04.390857-05
19	extras	0001_initial_part_1	2021-05-06 21:01:04.596871-05
20	tenancy	0001_initial	2021-05-06 21:01:04.721714-05
21	dcim	0001_initial_part_1	2021-05-06 21:01:05.044114-05
22	circuits	0001_initial_part_1	2021-05-06 21:01:05.148158-05
23	circuits	0002_initial_part_2	2021-05-06 21:01:05.55972-05
24	dcim	0002_initial_part_2	2021-05-06 21:01:06.058085-05
25	ipam	0001_initial_part_1	2021-05-06 21:01:06.306432-05
26	extras	0002_initial_part_2	2021-05-06 21:01:06.888657-05
27	dcim	0003_initial_part_3	2021-05-06 21:01:10.555413-05
28	virtualization	0001_initial	2021-05-06 21:01:11.29734-05
29	dcim	0004_initial_part_4	2021-05-06 21:01:15.786029-05
30	extras	0003_initial_part_3	2021-05-06 21:01:17.291951-05
31	extras	0004_populate_default_status_records	2021-05-06 21:01:17.830125-05
32	ipam	0002_initial_part_2	2021-05-06 21:01:19.991832-05
33	sessions	0001_initial	2021-05-06 21:01:20.03635-05
34	default	0001_initial	2021-05-06 21:01:20.188512-05
35	social_auth	0001_initial	2021-05-06 21:01:20.190312-05
36	default	0002_add_related_name	2021-05-06 21:01:20.292878-05
37	social_auth	0002_add_related_name	2021-05-06 21:01:20.294657-05
38	default	0003_alter_email_max_length	2021-05-06 21:01:20.305483-05
39	social_auth	0003_alter_email_max_length	2021-05-06 21:01:20.307046-05
40	default	0004_auto_20160423_0400	2021-05-06 21:01:20.325833-05
41	social_auth	0004_auto_20160423_0400	2021-05-06 21:01:20.32737-05
42	social_auth	0005_auto_20160727_2333	2021-05-06 21:01:20.336978-05
43	social_django	0006_partial	2021-05-06 21:01:20.347803-05
44	social_django	0007_code_timestamp	2021-05-06 21:01:20.360078-05
45	social_django	0008_partial_timestamp	2021-05-06 21:01:20.370197-05
46	social_django	0009_auto_20191118_0520	2021-05-06 21:01:20.405866-05
47	social_django	0010_uid_db_index	2021-05-06 21:01:20.429917-05
48	taggit	0001_initial	2021-05-06 21:01:20.531089-05
49	taggit	0002_auto_20150616_2121	2021-05-06 21:01:20.594618-05
50	taggit	0003_taggeditem_add_unique_index	2021-05-06 21:01:20.781434-05
51	social_django	0002_add_related_name	2021-05-06 21:01:20.786406-05
52	social_django	0005_auto_20160727_2333	2021-05-06 21:01:20.7887-05
53	social_django	0003_alter_email_max_length	2021-05-06 21:01:20.790961-05
54	social_django	0001_initial	2021-05-06 21:01:20.793213-05
55	social_django	0004_auto_20160423_0400	2021-05-06 21:01:20.795347-05
67	nautobot_device_onboarding	0001_initial	2021-05-15 04:59:04.692868-05
68	nautobot_device_onboarding	0002_create_onboardingdevice	2021-05-15 04:59:04.708111-05
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
jvlc48n710yqcew16cneb8yl4vtadaqp	.eJxVjEsOgkAQBe8yayHMlx6XXkBvQLqb7oBGSGBYGe8uJC50-Sqv6mU63MrQbass3dibswFWys63lWJyVQANFcV9umAthCDgnDenX42QHzId7rTDmeZS87xIfTxkKiNjGeepvtJduNxkeY7ruoPLV_trDbgOewhzgoY9SVBURoUGPUGOKUWKMVv0FpgcSFIEzH2yHEVbCqLR-57N-wMynkZi:1lhqeh:-xu0neXt8D1TMz04yX6_dRpYsARwwzSYSWYD_2yt1iQ	2021-05-29 04:32:19.612093-05
\.


--
-- Data for Name: extras_configcontext; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_configcontext (id, created, last_updated, name, owner_object_id, weight, description, is_active, data, owner_content_type_id) FROM stdin;
\.


--
-- Data for Name: extras_configcontext_cluster_groups; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_configcontext_cluster_groups (id, configcontext_id, clustergroup_id) FROM stdin;
\.


--
-- Data for Name: extras_configcontext_clusters; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_configcontext_clusters (id, configcontext_id, cluster_id) FROM stdin;
\.


--
-- Data for Name: extras_configcontext_platforms; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_configcontext_platforms (id, configcontext_id, platform_id) FROM stdin;
\.


--
-- Data for Name: extras_configcontext_regions; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_configcontext_regions (id, configcontext_id, region_id) FROM stdin;
\.


--
-- Data for Name: extras_configcontext_roles; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_configcontext_roles (id, configcontext_id, devicerole_id) FROM stdin;
\.


--
-- Data for Name: extras_configcontext_sites; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_configcontext_sites (id, configcontext_id, site_id) FROM stdin;
\.


--
-- Data for Name: extras_configcontext_tags; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_configcontext_tags (id, configcontext_id, tag_id) FROM stdin;
\.


--
-- Data for Name: extras_configcontext_tenant_groups; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_configcontext_tenant_groups (id, configcontext_id, tenantgroup_id) FROM stdin;
\.


--
-- Data for Name: extras_configcontext_tenants; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_configcontext_tenants (id, configcontext_id, tenant_id) FROM stdin;
\.


--
-- Data for Name: extras_customfield; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_customfield (id, type, name, label, description, required, filter_logic, "default", weight, validation_minimum, validation_maximum, validation_regex) FROM stdin;
\.


--
-- Data for Name: extras_customfield_content_types; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_customfield_content_types (id, customfield_id, contenttype_id) FROM stdin;
\.


--
-- Data for Name: extras_customfieldchoice; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_customfieldchoice (id, value, weight, field_id) FROM stdin;
\.


--
-- Data for Name: extras_customlink; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_customlink (id, created, last_updated, name, text, target_url, weight, group_name, button_class, new_window, content_type_id) FROM stdin;
\.


--
-- Data for Name: extras_exporttemplate; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_exporttemplate (id, created, last_updated, owner_object_id, name, description, template_code, mime_type, file_extension, content_type_id, owner_content_type_id) FROM stdin;
\.


--
-- Data for Name: extras_gitrepository; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_gitrepository (id, created, last_updated, _custom_field_data, name, slug, remote_url, branch, current_head, _token, username, provided_contents) FROM stdin;
\.


--
-- Data for Name: extras_imageattachment; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_imageattachment (id, object_id, image, image_height, image_width, name, created, content_type_id) FROM stdin;
\.


--
-- Data for Name: extras_jobresult; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_jobresult (id, name, created, completed, status, data, job_id, obj_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: extras_relationship; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_relationship (id, created, last_updated, name, slug, description, type, source_label, source_hidden, source_filter, destination_label, destination_hidden, destination_filter, destination_type_id, source_type_id) FROM stdin;
\.


--
-- Data for Name: extras_relationshipassociation; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_relationshipassociation (id, source_id, destination_id, destination_type_id, relationship_id, source_type_id) FROM stdin;
\.


--
-- Data for Name: extras_status; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_status (id, created, last_updated, _custom_field_data, name, color, slug, description) FROM stdin;
08e92b15-539e-4108-9eba-b41b4e26d727	2021-05-07	2021-05-06 21:01:17.580078-05	{}	Offline	ffc107	offline	Unit is offline
9b0fe008-789b-4390-81b8-d03f684af1dc	2021-05-07	2021-05-06 21:01:17.586743-05	{}	Active	4caf50	active	Unit is active
7df2f8de-f8eb-4d3a-99cc-6e8d64f9ee94	2021-05-07	2021-05-06 21:01:17.59192-05	{}	Planned	00bcd4	planned	Unit has been planned
1e1ff9bc-da91-430d-87c6-fde211778d05	2021-05-07	2021-05-06 21:01:17.596987-05	{}	Staged	2196f3	staged	Unit has been staged
d8bd5c29-8e5b-49d0-99ba-2d6df78553e5	2021-05-07	2021-05-06 21:01:17.601944-05	{}	Failed	f44336	failed	Unit has failed
6171f1d5-e85f-405d-adec-b747c430b555	2021-05-07	2021-05-06 21:01:17.606853-05	{}	Inventory	9e9e9e	inventory	Device is in inventory
30bcbffd-6025-4b01-a4ef-5793fe9b3f23	2021-05-07	2021-05-06 21:01:17.611738-05	{}	Decommissioning	ffc107	decommissioning	Unit is being decommissioned
a7fba00e-c037-4ff0-aee9-e8f9524c27fc	2021-05-07	2021-05-06 21:01:17.622861-05	{}	Staging	2196f3	staging	Site is in the process of being staged
0383624d-03e0-46ad-bca8-9e3f4d39e79d	2021-05-07	2021-05-06 21:01:17.635023-05	{}	Retired	f44336	retired	Site has been retired
4d6216bb-9868-42cf-92da-21c3408c2612	2021-05-07	2021-05-06 21:01:17.642417-05	{}	Reserved	ffc107	reserved	Unit is reserved
2ee9cf70-6d4f-454f-9e48-bfe849a94c83	2021-05-07	2021-05-06 21:01:17.647124-05	{}	Available	4caf50	available	Unit is available
63c4b88d-1cb4-47ce-ada0-e0f9e3041c8e	2021-05-07	2021-05-06 21:01:17.662469-05	{}	Deprecated	f44336	deprecated	Unit has been deprecated
5784389a-7f13-44c2-b0c2-c0e19cb761b8	2021-05-07	2021-05-06 21:01:17.669583-05	{}	Connected	4caf50	connected	Cable is connected
fecabb0b-2757-4bef-bc97-ae8d8053354e	2021-05-07	2021-05-06 21:01:17.705938-05	{}	Provisioning	2196f3	provisioning	Circuit is being provisioned
d106383d-4c04-47e5-9eec-552a8a79c92d	2021-05-07	2021-05-06 21:01:17.722088-05	{}	Deprovisioning	ffc107	deprovisioning	Circuit is being deprovisioned
7ac478c1-1089-49b3-8a30-c9f81e7cd939	2021-05-07	2021-05-06 21:01:17.726833-05	{}	Decommissioned	9e9e9e	decommissioned	Circuit has been decommissioned
e4643e9f-4936-4160-acdf-9fd7fbba05d1	2021-05-07	2021-05-06 21:01:17.734095-05	{}	Container	9e9e9e	container	Network contains children
edff1a8f-152c-4b83-8e9a-a87c58648fe4	2021-05-07	2021-05-06 21:01:17.775326-05	{}	DHCP	4caf50	dhcp	Dynamically assigned IPv4/IPv6 address
2b245866-a677-4ec7-8cf3-97325c55032a	2021-05-07	2021-05-06 21:01:17.779896-05	{}	SLAAC	4caf50	slaac	Dynamically assigned IPv6 address
\.


--
-- Data for Name: extras_status_content_types; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_status_content_types (id, status_id, contenttype_id) FROM stdin;
1	08e92b15-539e-4108-9eba-b41b4e26d727	1
2	9b0fe008-789b-4390-81b8-d03f684af1dc	1
3	7df2f8de-f8eb-4d3a-99cc-6e8d64f9ee94	1
4	1e1ff9bc-da91-430d-87c6-fde211778d05	1
5	d8bd5c29-8e5b-49d0-99ba-2d6df78553e5	1
6	6171f1d5-e85f-405d-adec-b747c430b555	1
7	30bcbffd-6025-4b01-a4ef-5793fe9b3f23	1
8	7df2f8de-f8eb-4d3a-99cc-6e8d64f9ee94	2
9	a7fba00e-c037-4ff0-aee9-e8f9524c27fc	2
10	9b0fe008-789b-4390-81b8-d03f684af1dc	2
11	30bcbffd-6025-4b01-a4ef-5793fe9b3f23	2
12	0383624d-03e0-46ad-bca8-9e3f4d39e79d	2
13	4d6216bb-9868-42cf-92da-21c3408c2612	3
14	2ee9cf70-6d4f-454f-9e48-bfe849a94c83	3
15	7df2f8de-f8eb-4d3a-99cc-6e8d64f9ee94	3
16	9b0fe008-789b-4390-81b8-d03f684af1dc	3
17	63c4b88d-1cb4-47ce-ada0-e0f9e3041c8e	3
18	5784389a-7f13-44c2-b0c2-c0e19cb761b8	4
19	7df2f8de-f8eb-4d3a-99cc-6e8d64f9ee94	4
20	30bcbffd-6025-4b01-a4ef-5793fe9b3f23	4
21	08e92b15-539e-4108-9eba-b41b4e26d727	5
22	9b0fe008-789b-4390-81b8-d03f684af1dc	5
23	7df2f8de-f8eb-4d3a-99cc-6e8d64f9ee94	5
24	d8bd5c29-8e5b-49d0-99ba-2d6df78553e5	5
25	7df2f8de-f8eb-4d3a-99cc-6e8d64f9ee94	6
26	fecabb0b-2757-4bef-bc97-ae8d8053354e	6
27	9b0fe008-789b-4390-81b8-d03f684af1dc	6
28	08e92b15-539e-4108-9eba-b41b4e26d727	6
29	d106383d-4c04-47e5-9eec-552a8a79c92d	6
30	7ac478c1-1089-49b3-8a30-c9f81e7cd939	6
31	e4643e9f-4936-4160-acdf-9fd7fbba05d1	7
32	9b0fe008-789b-4390-81b8-d03f684af1dc	7
33	4d6216bb-9868-42cf-92da-21c3408c2612	7
34	63c4b88d-1cb4-47ce-ada0-e0f9e3041c8e	7
35	9b0fe008-789b-4390-81b8-d03f684af1dc	8
36	4d6216bb-9868-42cf-92da-21c3408c2612	8
37	63c4b88d-1cb4-47ce-ada0-e0f9e3041c8e	8
38	edff1a8f-152c-4b83-8e9a-a87c58648fe4	8
39	2b245866-a677-4ec7-8cf3-97325c55032a	8
40	9b0fe008-789b-4390-81b8-d03f684af1dc	9
41	4d6216bb-9868-42cf-92da-21c3408c2612	9
42	63c4b88d-1cb4-47ce-ada0-e0f9e3041c8e	9
43	08e92b15-539e-4108-9eba-b41b4e26d727	10
44	9b0fe008-789b-4390-81b8-d03f684af1dc	10
45	7df2f8de-f8eb-4d3a-99cc-6e8d64f9ee94	10
46	1e1ff9bc-da91-430d-87c6-fde211778d05	10
47	d8bd5c29-8e5b-49d0-99ba-2d6df78553e5	10
48	30bcbffd-6025-4b01-a4ef-5793fe9b3f23	10
\.


--
-- Data for Name: extras_tag; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_tag (name, slug, id, created, last_updated, _custom_field_data, color, description) FROM stdin;
\.


--
-- Data for Name: extras_taggeditem; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
\.


--
-- Data for Name: extras_webhook; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_webhook (id, created, last_updated, name, type_create, type_update, type_delete, payload_url, enabled, http_method, http_content_type, additional_headers, body_template, secret, ssl_verification, ca_file_path) FROM stdin;
\.


--
-- Data for Name: extras_webhook_content_types; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.extras_webhook_content_types (id, webhook_id, contenttype_id) FROM stdin;
\.


--
-- Data for Name: ipam_aggregate; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.ipam_aggregate (id, created, last_updated, _custom_field_data, network, broadcast, prefix_length, date_added, description, rir_id, tenant_id) FROM stdin;
72561a4c-a345-46d1-ab38-61ebbc45af5b	2021-05-15	2021-05-15 04:42:03.356504-05	{}	\\x0a000000	\\x0affffff	8	\N		e9d5e76d-b826-495f-abe8-8587083710ac	\N
2e6f72f0-c248-461e-8bc9-a46d1dd81087	2021-05-15	2021-05-15 05:37:40.224422-05	{}	\\xac100000	\\xac1003ff	22	\N		e9d5e76d-b826-495f-abe8-8587083710ac	\N
\.


--
-- Data for Name: ipam_ipaddress; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.ipam_ipaddress (id, created, last_updated, _custom_field_data, host, broadcast, prefix_length, role, assigned_object_id, dns_name, description, assigned_object_type_id, nat_inside_id, status_id, tenant_id, vrf_id) FROM stdin;
28528116-39ab-464c-9934-14ac2a212acd	2021-05-15	2021-05-15 05:26:42.815946-05	{}	\\x0a49fe0c	\\x0a49feff	24		258a15d3-80c9-4aba-a494-67019b55b7a3			37	\N	\N	\N	\N
599ecf26-6583-4567-bd72-13e5dcbe9e8d	2021-05-15	2021-05-15 05:26:43.385738-05	{}	\\x0a49fe0d	\\x0a49feff	24		e652ba46-8bce-4c83-9163-fa68a74c5626			37	\N	\N	\N	\N
31c9ed5f-55c7-4b6d-b1e0-cdc20f3b50dd	2021-05-15	2021-05-15 05:26:43.967479-05	{}	\\x0a49fe0e	\\x0a49feff	24		a69dc0ec-b247-4e6d-8171-4090786f009d			37	\N	\N	\N	\N
4fa3ea71-1bea-4f7c-90ec-b0e0f602f095	2021-05-15	2021-05-15 05:26:44.536385-05	{}	\\x0a49fe0f	\\x0a49feff	24		68aa545b-c125-4af7-ab0a-ac4f908bd1c0			37	\N	\N	\N	\N
1018c1d2-3697-4c41-8270-bd31bbc47828	2021-05-15	2021-05-15 05:26:45.115389-05	{}	\\x0a49fe10	\\x0a49feff	24		ff81dc2d-10c2-4df7-9ac0-9bd451cb0497			37	\N	\N	\N	\N
94590c80-f022-4b93-853c-3a05c43e6553	2021-05-15	2021-05-15 05:26:45.684726-05	{}	\\x0a49fe11	\\x0a49feff	24		41f4c4cf-a6fe-4904-ae9e-eb2d29316f25			37	\N	\N	\N	\N
94392812-bbdf-42c0-b4be-75a252369283	2021-05-15	2021-05-15 05:26:46.251765-05	{}	\\x0a49fe12	\\x0a49feff	24		60230bcd-aca1-4034-90c4-69e95b7e21d9			37	\N	\N	\N	\N
5aa4a0d9-0d10-4fa6-bf0a-c2fd97dcf8cc	2021-05-15	2021-05-15 05:26:46.801497-05	{}	\\x0a49fe01	\\x0a49feff	24		8e75457e-3d04-4208-a192-48bf707f463b			37	\N	\N	\N	\N
6d4b16dd-623a-428f-a557-bf5b7d892073	2021-05-15	2021-05-15 05:26:47.334672-05	{}	\\x0a49fe02	\\x0a49feff	24		27fbf521-0b62-4f98-a86d-ad89c273ad6e			37	\N	\N	\N	\N
95600439-eca3-45e9-b3ef-955c69b3cef9	2021-05-15	2021-05-15 05:27:17.530855-05	{}	\\x0a49fe0b	\\x0a49feff	24		674909a9-4462-4b4b-85eb-f2822f7c7806			37	\N	\N	\N	\N
\.


--
-- Data for Name: ipam_prefix; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.ipam_prefix (id, created, last_updated, _custom_field_data, network, broadcast, prefix_length, is_pool, description, role_id, site_id, status_id, tenant_id, vlan_id, vrf_id) FROM stdin;
61baff5a-94c7-4e17-ad61-1249784fe3ad	2021-05-15	2021-05-15 04:42:38.77945-05	{}	\\x0a49fe00	\\x0a49feff	24	t	EAPI Lab Management	\N	\N	9b0fe008-789b-4390-81b8-d03f684af1dc	\N	\N	\N
ed5e7361-495b-45ba-a150-c869defe4f16	2021-05-15	2021-05-15 05:38:14.898667-05	{}	\\xac1fff00	\\xac1fffff	24	t	Underlay block	\N	\N	9b0fe008-789b-4390-81b8-d03f684af1dc	\N	\N	\N
\.


--
-- Data for Name: ipam_rir; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.ipam_rir (id, created, last_updated, _custom_field_data, name, slug, is_private, description) FROM stdin;
e9d5e76d-b826-495f-abe8-8587083710ac	2021-05-15	2021-05-15 04:41:35.629954-05	{}	RFC1918	rfc1918	t	
\.


--
-- Data for Name: ipam_role; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.ipam_role (id, created, last_updated, _custom_field_data, name, slug, weight, description) FROM stdin;
\.


--
-- Data for Name: ipam_routetarget; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.ipam_routetarget (id, created, last_updated, _custom_field_data, name, description, tenant_id) FROM stdin;
\.


--
-- Data for Name: ipam_service; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.ipam_service (id, created, last_updated, _custom_field_data, name, protocol, ports, description, device_id, virtual_machine_id) FROM stdin;
\.


--
-- Data for Name: ipam_service_ipaddresses; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.ipam_service_ipaddresses (id, service_id, ipaddress_id) FROM stdin;
\.


--
-- Data for Name: ipam_vlan; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.ipam_vlan (id, created, last_updated, _custom_field_data, vid, name, description, group_id, role_id, site_id, status_id, tenant_id) FROM stdin;
\.


--
-- Data for Name: ipam_vlangroup; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.ipam_vlangroup (id, created, last_updated, _custom_field_data, name, slug, description, site_id) FROM stdin;
\.


--
-- Data for Name: ipam_vrf; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.ipam_vrf (id, created, last_updated, _custom_field_data, name, rd, enforce_unique, description, tenant_id) FROM stdin;
\.


--
-- Data for Name: ipam_vrf_export_targets; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.ipam_vrf_export_targets (id, vrf_id, routetarget_id) FROM stdin;
\.


--
-- Data for Name: ipam_vrf_import_targets; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.ipam_vrf_import_targets (id, vrf_id, routetarget_id) FROM stdin;
\.


--
-- Data for Name: nautobot_device_onboarding_onboardingdevice; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.nautobot_device_onboarding_onboardingdevice (id, enabled, device_id) FROM stdin;
aef9a9d4-9f4b-4b28-a440-ce8d98e450d0	t	441929ac-d4e0-4240-b224-937aedb59993
4e145e68-d093-4ff1-be34-8e65ccba42f5	t	38ce7334-00da-47fd-bcaf-d0cf58528951
bc60acd4-f4de-4434-8337-7262ebb37874	t	9da0d7c7-9756-44e8-999b-001b4e22a9b1
9cda2660-082f-46b7-9645-557978e6de30	t	f63be1eb-4e67-4962-bbdc-0e9c8c823159
57849872-a676-43b6-8de1-ff2274f5d88e	t	9bd966fe-6ad8-48e5-92f8-d8afd0394c33
f46a56ef-968c-4296-af6b-53ca7da47006	t	8b12c575-582d-41ff-a6ba-2fbf6ee1e1ce
f6ffc94d-0cdb-4dd2-b43f-df4eadee0794	t	613b0222-eea1-42b0-bd99-59b552509213
4e9237e2-b7f0-4305-a0ac-cd792c3bc298	t	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f
d961888c-6aab-401c-ab44-2993ead71525	t	419b6e6a-71f7-4ab1-bbb4-56d7be97f946
f62ba63e-52a5-4313-8c67-0cf06f0a690d	t	8b091d4d-5916-4af2-a38b-7203150ec519
\.


--
-- Data for Name: nautobot_device_onboarding_onboardingtask; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.nautobot_device_onboarding_onboardingtask (id, created, last_updated, ip_address, device_type, status, failed_reason, message, port, timeout, created_device_id, platform_id, role_id, site_id) FROM stdin;
4cebe15a-3299-4cdf-aa38-6fe426d180b9	2021-05-15	2021-05-15 05:26:42.848814-05	10.73.254.12	\N	succeeded	\N		443	30	441929ac-d4e0-4240-b224-937aedb59993	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
8d960596-7189-4485-9f15-96cb0f34c33f	2021-05-15	2021-05-15 05:26:43.422179-05	10.73.254.13	\N	succeeded	\N		443	30	38ce7334-00da-47fd-bcaf-d0cf58528951	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
34c29c16-a5ff-4d89-890c-30b3781776d3	2021-05-15	2021-05-15 05:27:18.67745-05	10.73.254.13	\N	succeeded	\N		443	30	38ce7334-00da-47fd-bcaf-d0cf58528951	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
78559448-6c8f-45d3-833f-d67f240abe8d	2021-05-15	2021-05-15 05:26:44.000355-05	10.73.254.14	\N	succeeded	\N		443	30	9da0d7c7-9756-44e8-999b-001b4e22a9b1	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
dfca7fbf-a6da-4a77-8cdf-9f4e9b5cc4fb	2021-05-15	2021-05-15 05:38:31.705115-05	10.73.254.11	\N	succeeded	\N		443	30	8b091d4d-5916-4af2-a38b-7203150ec519	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
d7d3b18a-1411-45bb-9f9f-7a6ff2817654	2021-05-15	2021-05-15 05:26:44.567105-05	10.73.254.15	\N	succeeded	\N		443	30	f63be1eb-4e67-4962-bbdc-0e9c8c823159	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
e0ac5c4f-cd07-4d2c-99a8-3ba5d30be0cd	2021-05-15	2021-05-15 05:27:19.197674-05	10.73.254.14	\N	succeeded	\N		443	30	9da0d7c7-9756-44e8-999b-001b4e22a9b1	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
58abe100-1b0b-452c-b715-6f8716aa959a	2021-05-15	2021-05-15 05:26:45.145971-05	10.73.254.16	\N	succeeded	\N		443	30	9bd966fe-6ad8-48e5-92f8-d8afd0394c33	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
aaea177e-a1f5-485b-9fb1-af081074359f	2021-05-15	2021-05-15 05:38:34.340601-05	10.73.254.16	\N	succeeded	\N		443	30	9bd966fe-6ad8-48e5-92f8-d8afd0394c33	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
e4be526f-beb0-4ebd-8a15-3ea9feb2f5c9	2021-05-15	2021-05-15 05:26:45.72592-05	10.73.254.17	\N	succeeded	\N		443	30	8b12c575-582d-41ff-a6ba-2fbf6ee1e1ce	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
ef7f72d7-b479-4782-9820-14a8e6f517c4	2021-05-15	2021-05-15 05:11:26.131074-05	10.73.254.12	vEOS	succeeded	\N		443	30	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
101c709a-f398-4c40-b4d7-5448b7cdec90	2021-05-15	2021-05-15 05:14:35.314785-05	10.73.254.13	\N	succeeded	\N		443	30	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
e427e04f-0491-4ba1-939a-1f0861a6ca87	2021-05-15	2021-05-15 05:14:35.958114-05	10.73.254.14	\N	succeeded	\N		443	30	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
9a63cde3-c037-4803-b545-cd1e31586d07	2021-05-15	2021-05-15 05:14:36.606692-05	10.73.254.15	\N	succeeded	\N		443	30	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
416ec4b2-3032-49a3-8a06-500ebdf880be	2021-05-15	2021-05-15 05:14:37.24174-05	10.73.254.16	\N	succeeded	\N		443	30	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
c53fb7a5-0f2f-4f7f-a1eb-d52a7e05bd3a	2021-05-15	2021-05-15 05:14:37.895996-05	10.73.254.17	\N	succeeded	\N		443	30	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
f81c8f6b-85f6-440b-8613-042ab5f5a7d2	2021-05-15	2021-05-15 05:14:38.539519-05	10.73.254.18	\N	succeeded	\N		443	30	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
844bb62c-1c92-40ec-b8e6-9b971df6434b	2021-05-15	2021-05-15 05:14:39.194983-05	10.73.254.1	\N	succeeded	\N		443	30	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
7d350c41-162b-4910-bb6c-c9b0d23d8aa2	2021-05-15	2021-05-15 05:14:39.847737-05	10.73.254.2	\N	succeeded	\N		443	30	\N	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
6f5e2c02-2a82-4fb7-83fd-04c1dbc4c99f	2021-05-15	2021-05-15 05:27:19.705069-05	10.73.254.15	\N	succeeded	\N		443	30	f63be1eb-4e67-4962-bbdc-0e9c8c823159	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
832c5ba6-4578-48eb-bfe4-d5bcf20aa9a2	2021-05-15	2021-05-15 05:38:32.267131-05	10.73.254.12	\N	succeeded	\N		443	30	441929ac-d4e0-4240-b224-937aedb59993	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
1e1d3aee-6677-4ebf-a4d6-b0fa64d939a6	2021-05-15	2021-05-15 05:26:46.284187-05	10.73.254.18	\N	succeeded	\N		443	30	613b0222-eea1-42b0-bd99-59b552509213	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
6e5761cf-24d5-4c19-8166-cfa11ed17cff	2021-05-15	2021-05-15 05:27:20.234488-05	10.73.254.16	\N	succeeded	\N		443	30	9bd966fe-6ad8-48e5-92f8-d8afd0394c33	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
25db1239-b7eb-41c2-bf9c-2b5ebc98d1f3	2021-05-15	2021-05-15 05:26:46.833784-05	10.73.254.1	\N	succeeded	\N		443	30	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	e42e9f0b-e496-43de-95a0-2d8de093fc96	f37de776-152a-411a-ae05-d9004523eebc
973a8454-3be5-47a2-85e9-9553564334bd	2021-05-15	2021-05-15 05:26:47.364982-05	10.73.254.2	\N	succeeded	\N		443	30	419b6e6a-71f7-4ab1-bbb4-56d7be97f946	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	e42e9f0b-e496-43de-95a0-2d8de093fc96	f37de776-152a-411a-ae05-d9004523eebc
4843c82a-b309-4973-8b63-a46af0daaad5	2021-05-15	2021-05-15 05:27:20.743966-05	10.73.254.17	\N	succeeded	\N		443	30	8b12c575-582d-41ff-a6ba-2fbf6ee1e1ce	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
c538c649-1813-47b1-9ce0-48de9443238f	2021-05-15	2021-05-15 05:27:17.563862-05	10.73.254.11	\N	succeeded	\N		443	30	8b091d4d-5916-4af2-a38b-7203150ec519	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
de4a5246-e383-45ec-ae44-5ca75ac6c4d8	2021-05-15	2021-05-15 05:38:32.780674-05	10.73.254.13	\N	succeeded	\N		443	30	38ce7334-00da-47fd-bcaf-d0cf58528951	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
7b521340-d4c7-4304-b64e-234309a9f9fd	2021-05-15	2021-05-15 05:27:18.119276-05	10.73.254.12	\N	succeeded	\N		443	30	441929ac-d4e0-4240-b224-937aedb59993	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
266ec72f-5ad4-4400-862e-14a4dbe302fd	2021-05-15	2021-05-15 05:27:21.26703-05	10.73.254.18	\N	succeeded	\N		443	30	613b0222-eea1-42b0-bd99-59b552509213	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
71e99675-5ae4-4985-a78b-02246cb12edc	2021-05-15	2021-05-15 05:38:34.85864-05	10.73.254.17	\N	succeeded	\N		443	30	8b12c575-582d-41ff-a6ba-2fbf6ee1e1ce	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
cba24923-08ec-496f-9858-711b31e2f788	2021-05-15	2021-05-15 05:27:21.760668-05	10.73.254.1	\N	succeeded	\N		443	30	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	e42e9f0b-e496-43de-95a0-2d8de093fc96	f37de776-152a-411a-ae05-d9004523eebc
d16084e4-8e95-47af-ba08-7eaa98e62144	2021-05-15	2021-05-15 05:38:33.310043-05	10.73.254.14	\N	succeeded	\N		443	30	9da0d7c7-9756-44e8-999b-001b4e22a9b1	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
0bc990ab-14cb-4bfa-b88b-784920fef8e3	2021-05-15	2021-05-15 05:27:22.276135-05	10.73.254.2	\N	succeeded	\N		443	30	419b6e6a-71f7-4ab1-bbb4-56d7be97f946	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	e42e9f0b-e496-43de-95a0-2d8de093fc96	f37de776-152a-411a-ae05-d9004523eebc
1541192f-afb8-400a-912f-05d1bf4f9f6c	2021-05-15	2021-05-15 05:38:33.810942-05	10.73.254.15	\N	succeeded	\N		443	30	f63be1eb-4e67-4962-bbdc-0e9c8c823159	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
b72ce509-ef7c-4f1c-8b75-8554901bd982	2021-05-15	2021-05-15 05:38:35.381851-05	10.73.254.18	\N	succeeded	\N		443	30	613b0222-eea1-42b0-bd99-59b552509213	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	edb45c97-c633-40f9-8f6f-d8f5f599bca6	f37de776-152a-411a-ae05-d9004523eebc
c4cbe82c-12bc-49c1-bcd3-f5819034ed93	2021-05-15	2021-05-15 05:38:35.900799-05	10.73.254.1	\N	succeeded	\N		443	30	02f6dfe9-8a9e-4f67-b196-5d7fd2497d2f	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	e42e9f0b-e496-43de-95a0-2d8de093fc96	f37de776-152a-411a-ae05-d9004523eebc
1c710bbe-6293-4f3d-a5bf-e958882835ad	2021-05-15	2021-05-15 05:38:36.401549-05	10.73.254.2	\N	succeeded	\N		443	30	419b6e6a-71f7-4ab1-bbb4-56d7be97f946	5599c0c9-95b2-42c7-9723-4bb3a0e821a2	e42e9f0b-e496-43de-95a0-2d8de093fc96	f37de776-152a-411a-ae05-d9004523eebc
\.


--
-- Data for Name: social_auth_association; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.social_auth_association (id, server_url, handle, secret, issued, lifetime, assoc_type) FROM stdin;
\.


--
-- Data for Name: social_auth_code; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.social_auth_code (id, email, code, verified, "timestamp") FROM stdin;
\.


--
-- Data for Name: social_auth_nonce; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.social_auth_nonce (id, server_url, "timestamp", salt) FROM stdin;
\.


--
-- Data for Name: social_auth_partial; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.social_auth_partial (id, token, next_step, backend, data, "timestamp") FROM stdin;
\.


--
-- Data for Name: social_auth_usersocialauth; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.social_auth_usersocialauth (id, provider, uid, extra_data, user_id, created, modified) FROM stdin;
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
\.


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
\.


--
-- Data for Name: tenancy_tenant; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.tenancy_tenant (id, created, last_updated, _custom_field_data, name, slug, description, comments, group_id) FROM stdin;
\.


--
-- Data for Name: tenancy_tenantgroup; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.tenancy_tenantgroup (id, created, last_updated, _custom_field_data, name, slug, description, lft, rght, tree_id, level, parent_id) FROM stdin;
99e611d4-c27f-4200-8cc8-c3274e3e0544	2021-05-15	2021-05-15 04:35:55.703788-05	{}	AVD Demo Environment	avd-demo-environment		1	2	1	0	\N
\.


--
-- Data for Name: users_objectpermission; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.users_objectpermission (id, name, description, enabled, actions, constraints) FROM stdin;
\.


--
-- Data for Name: users_objectpermission_groups; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.users_objectpermission_groups (id, objectpermission_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_objectpermission_object_types; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.users_objectpermission_object_types (id, objectpermission_id, contenttype_id) FROM stdin;
\.


--
-- Data for Name: users_objectpermission_users; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.users_objectpermission_users (id, objectpermission_id, user_id) FROM stdin;
\.


--
-- Data for Name: users_token; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.users_token (id, created, expires, key, write_enabled, description, user_id) FROM stdin;
3cff36c9-4125-45cf-8cfd-9569def50781	2021-05-15 05:52:17.395163-05	\N	24b196804e0aa381d711f62da2c6cf19e77f4153	t	Ansible token	8cfb9237-fa62-48f4-b537-2411844e8223
2784d717-ff80-49a1-aa87-b97f01fb7bfb	2021-05-15 09:45:05.792278-05	\N	0347e563544947020c12b4a0d6a78fbbcf4055d4	t	Demo Token	8cfb9237-fa62-48f4-b537-2411844e8223
\.


--
-- Data for Name: virtualization_cluster; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.virtualization_cluster (id, created, last_updated, _custom_field_data, name, comments, group_id, site_id, tenant_id, type_id) FROM stdin;
\.


--
-- Data for Name: virtualization_clustergroup; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.virtualization_clustergroup (id, created, last_updated, _custom_field_data, name, slug, description) FROM stdin;
\.


--
-- Data for Name: virtualization_clustertype; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.virtualization_clustertype (id, created, last_updated, _custom_field_data, name, slug, description) FROM stdin;
\.


--
-- Data for Name: virtualization_virtualmachine; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.virtualization_virtualmachine (id, created, last_updated, _custom_field_data, local_context_data, local_context_data_owner_object_id, name, vcpus, memory, disk, comments, cluster_id, local_context_data_owner_content_type_id, platform_id, primary_ip4_id, primary_ip6_id, role_id, status_id, tenant_id) FROM stdin;
\.


--
-- Data for Name: virtualization_vminterface; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.virtualization_vminterface (id, _custom_field_data, enabled, mac_address, mtu, mode, name, _name, description, untagged_vlan_id, virtual_machine_id) FROM stdin;
\.


--
-- Data for Name: virtualization_vminterface_tagged_vlans; Type: TABLE DATA; Schema: public; Owner: nautobot
--

COPY public.virtualization_vminterface_tagged_vlans (id, vminterface_id, vlan_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 396, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: dcim_interface_tagged_vlans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.dcim_interface_tagged_vlans_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 2, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 132, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 99, true);


--
-- Name: extras_configcontext_cluster_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.extras_configcontext_cluster_groups_id_seq', 1, false);


--
-- Name: extras_configcontext_clusters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.extras_configcontext_clusters_id_seq', 1, false);


--
-- Name: extras_configcontext_platforms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.extras_configcontext_platforms_id_seq', 1, false);


--
-- Name: extras_configcontext_regions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.extras_configcontext_regions_id_seq', 1, false);


--
-- Name: extras_configcontext_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.extras_configcontext_roles_id_seq', 1, false);


--
-- Name: extras_configcontext_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.extras_configcontext_sites_id_seq', 1, false);


--
-- Name: extras_configcontext_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.extras_configcontext_tags_id_seq', 1, false);


--
-- Name: extras_configcontext_tenant_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.extras_configcontext_tenant_groups_id_seq', 1, false);


--
-- Name: extras_configcontext_tenants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.extras_configcontext_tenants_id_seq', 1, false);


--
-- Name: extras_customfield_content_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.extras_customfield_content_types_id_seq', 1, false);


--
-- Name: extras_status_content_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.extras_status_content_types_id_seq', 66, true);


--
-- Name: extras_webhook_content_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.extras_webhook_content_types_id_seq', 1, false);


--
-- Name: ipam_service_ipaddresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.ipam_service_ipaddresses_id_seq', 1, false);


--
-- Name: ipam_vrf_export_targets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.ipam_vrf_export_targets_id_seq', 1, false);


--
-- Name: ipam_vrf_import_targets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.ipam_vrf_import_targets_id_seq', 1, false);


--
-- Name: social_auth_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.social_auth_association_id_seq', 1, false);


--
-- Name: social_auth_code_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.social_auth_code_id_seq', 1, false);


--
-- Name: social_auth_nonce_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.social_auth_nonce_id_seq', 1, false);


--
-- Name: social_auth_partial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.social_auth_partial_id_seq', 1, false);


--
-- Name: social_auth_usersocialauth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.social_auth_usersocialauth_id_seq', 1, false);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 1, false);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 1, false);


--
-- Name: users_objectpermission_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.users_objectpermission_groups_id_seq', 1, false);


--
-- Name: users_objectpermission_object_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.users_objectpermission_object_types_id_seq', 1, false);


--
-- Name: users_objectpermission_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.users_objectpermission_users_id_seq', 1, false);


--
-- Name: virtualization_vminterface_tagged_vlans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nautobot
--

SELECT pg_catalog.setval('public.virtualization_vminterface_tagged_vlans_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: circuits_circuit circuits_circuit_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_circuit
    ADD CONSTRAINT circuits_circuit_pkey PRIMARY KEY (id);


--
-- Name: circuits_circuit circuits_circuit_provider_id_cid_b6f29862_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_circuit
    ADD CONSTRAINT circuits_circuit_provider_id_cid_b6f29862_uniq UNIQUE (provider_id, cid);


--
-- Name: circuits_circuittermination circuits_circuittermination_circuit_id_term_side_b13efd0e_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuittermination_circuit_id_term_side_b13efd0e_uniq UNIQUE (circuit_id, term_side);


--
-- Name: circuits_circuittermination circuits_circuittermination_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuittermination_pkey PRIMARY KEY (id);


--
-- Name: circuits_circuittype circuits_circuittype_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_circuittype
    ADD CONSTRAINT circuits_circuittype_name_key UNIQUE (name);


--
-- Name: circuits_circuittype circuits_circuittype_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_circuittype
    ADD CONSTRAINT circuits_circuittype_pkey PRIMARY KEY (id);


--
-- Name: circuits_circuittype circuits_circuittype_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_circuittype
    ADD CONSTRAINT circuits_circuittype_slug_key UNIQUE (slug);


--
-- Name: circuits_provider circuits_provider_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_provider
    ADD CONSTRAINT circuits_provider_name_key UNIQUE (name);


--
-- Name: circuits_provider circuits_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_provider
    ADD CONSTRAINT circuits_provider_pkey PRIMARY KEY (id);


--
-- Name: circuits_provider circuits_provider_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_provider
    ADD CONSTRAINT circuits_provider_slug_key UNIQUE (slug);


--
-- Name: dcim_cable dcim_cable_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable_pkey PRIMARY KEY (id);


--
-- Name: dcim_cable dcim_cable_termination_a_type_id_termination_a_id_e9d24bad_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable_termination_a_type_id_termination_a_id_e9d24bad_uniq UNIQUE (termination_a_type_id, termination_a_id);


--
-- Name: dcim_cable dcim_cable_termination_b_type_id_termination_b_id_057fc21f_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable_termination_b_type_id_termination_b_id_057fc21f_uniq UNIQUE (termination_b_type_id, termination_b_id);


--
-- Name: dcim_cablepath dcim_cablepath_origin_type_id_origin_id_41b6f814_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_cablepath
    ADD CONSTRAINT dcim_cablepath_origin_type_id_origin_id_41b6f814_uniq UNIQUE (origin_type_id, origin_id);


--
-- Name: dcim_cablepath dcim_cablepath_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_cablepath
    ADD CONSTRAINT dcim_cablepath_pkey PRIMARY KEY (id);


--
-- Name: dcim_consoleport dcim_consoleport_device_id_name_293786b6_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_consoleport
    ADD CONSTRAINT dcim_consoleport_device_id_name_293786b6_uniq UNIQUE (device_id, name);


--
-- Name: dcim_consoleport dcim_consoleport_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_consoleport
    ADD CONSTRAINT dcim_consoleport_pkey PRIMARY KEY (id);


--
-- Name: dcim_consoleporttemplate dcim_consoleporttemplate_device_type_id_name_8208f9ca_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_consoleporttemplate
    ADD CONSTRAINT dcim_consoleporttemplate_device_type_id_name_8208f9ca_uniq UNIQUE (device_type_id, name);


--
-- Name: dcim_consoleporttemplate dcim_consoleporttemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_consoleporttemplate
    ADD CONSTRAINT dcim_consoleporttemplate_pkey PRIMARY KEY (id);


--
-- Name: dcim_consoleserverport dcim_consoleserverport_device_id_name_fb1c5999_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_consoleserverport
    ADD CONSTRAINT dcim_consoleserverport_device_id_name_fb1c5999_uniq UNIQUE (device_id, name);


--
-- Name: dcim_consoleserverport dcim_consoleserverport_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_consoleserverport
    ADD CONSTRAINT dcim_consoleserverport_pkey PRIMARY KEY (id);


--
-- Name: dcim_consoleserverporttemplate dcim_consoleserverportte_device_type_id_name_a05c974d_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_consoleserverporttemplate
    ADD CONSTRAINT dcim_consoleserverportte_device_type_id_name_a05c974d_uniq UNIQUE (device_type_id, name);


--
-- Name: dcim_consoleserverporttemplate dcim_consoleserverporttemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_consoleserverporttemplate
    ADD CONSTRAINT dcim_consoleserverporttemplate_pkey PRIMARY KEY (id);


--
-- Name: dcim_device dcim_device_asset_tag_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_asset_tag_key UNIQUE (asset_tag);


--
-- Name: dcim_device dcim_device_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_pkey PRIMARY KEY (id);


--
-- Name: dcim_device dcim_device_primary_ip4_id_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_primary_ip4_id_key UNIQUE (primary_ip4_id);


--
-- Name: dcim_device dcim_device_primary_ip6_id_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_primary_ip6_id_key UNIQUE (primary_ip6_id);


--
-- Name: dcim_device dcim_device_rack_id_position_face_43208a79_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_rack_id_position_face_43208a79_uniq UNIQUE (rack_id, "position", face);


--
-- Name: dcim_device dcim_device_site_id_tenant_id_name_93f4f962_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_site_id_tenant_id_name_93f4f962_uniq UNIQUE (site_id, tenant_id, name);


--
-- Name: dcim_device dcim_device_virtual_chassis_id_vc_position_efea7133_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_virtual_chassis_id_vc_position_efea7133_uniq UNIQUE (virtual_chassis_id, vc_position);


--
-- Name: dcim_devicebay dcim_devicebay_device_id_name_2475a67b_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_devicebay
    ADD CONSTRAINT dcim_devicebay_device_id_name_2475a67b_uniq UNIQUE (device_id, name);


--
-- Name: dcim_devicebay dcim_devicebay_installed_device_id_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_devicebay
    ADD CONSTRAINT dcim_devicebay_installed_device_id_key UNIQUE (installed_device_id);


--
-- Name: dcim_devicebay dcim_devicebay_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_devicebay
    ADD CONSTRAINT dcim_devicebay_pkey PRIMARY KEY (id);


--
-- Name: dcim_devicebaytemplate dcim_devicebaytemplate_device_type_id_name_8f4899fe_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_devicebaytemplate
    ADD CONSTRAINT dcim_devicebaytemplate_device_type_id_name_8f4899fe_uniq UNIQUE (device_type_id, name);


--
-- Name: dcim_devicebaytemplate dcim_devicebaytemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_devicebaytemplate
    ADD CONSTRAINT dcim_devicebaytemplate_pkey PRIMARY KEY (id);


--
-- Name: dcim_devicerole dcim_devicerole_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_devicerole
    ADD CONSTRAINT dcim_devicerole_name_key UNIQUE (name);


--
-- Name: dcim_devicerole dcim_devicerole_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_devicerole
    ADD CONSTRAINT dcim_devicerole_pkey PRIMARY KEY (id);


--
-- Name: dcim_devicerole dcim_devicerole_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_devicerole
    ADD CONSTRAINT dcim_devicerole_slug_key UNIQUE (slug);


--
-- Name: dcim_devicetype dcim_devicetype_manufacturer_id_model_17948c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_devicetype
    ADD CONSTRAINT dcim_devicetype_manufacturer_id_model_17948c0c_uniq UNIQUE (manufacturer_id, model);


--
-- Name: dcim_devicetype dcim_devicetype_manufacturer_id_slug_a0b931cb_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_devicetype
    ADD CONSTRAINT dcim_devicetype_manufacturer_id_slug_a0b931cb_uniq UNIQUE (manufacturer_id, slug);


--
-- Name: dcim_devicetype dcim_devicetype_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_devicetype
    ADD CONSTRAINT dcim_devicetype_pkey PRIMARY KEY (id);


--
-- Name: dcim_frontport dcim_frontport_device_id_name_235b7af2_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport_device_id_name_235b7af2_uniq UNIQUE (device_id, name);


--
-- Name: dcim_frontport dcim_frontport_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport_pkey PRIMARY KEY (id);


--
-- Name: dcim_frontport dcim_frontport_rear_port_id_rear_port_position_8b0bf7ca_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport_rear_port_id_rear_port_position_8b0bf7ca_uniq UNIQUE (rear_port_id, rear_port_position);


--
-- Name: dcim_frontporttemplate dcim_frontporttemplate_device_type_id_name_0a0a0e05_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_frontporttemplate
    ADD CONSTRAINT dcim_frontporttemplate_device_type_id_name_0a0a0e05_uniq UNIQUE (device_type_id, name);


--
-- Name: dcim_frontporttemplate dcim_frontporttemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_frontporttemplate
    ADD CONSTRAINT dcim_frontporttemplate_pkey PRIMARY KEY (id);


--
-- Name: dcim_frontporttemplate dcim_frontporttemplate_rear_port_id_rear_port_p_401fe927_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_frontporttemplate
    ADD CONSTRAINT dcim_frontporttemplate_rear_port_id_rear_port_p_401fe927_uniq UNIQUE (rear_port_id, rear_port_position);


--
-- Name: dcim_interface dcim_interface_device_id_name_bffc4ec4_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface_device_id_name_bffc4ec4_uniq UNIQUE (device_id, name);


--
-- Name: dcim_interface dcim_interface_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface_pkey PRIMARY KEY (id);


--
-- Name: dcim_interface_tagged_vlans dcim_interface_tagged_vlans_interface_id_vlan_id_0d55c576_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_interface_tagged_vlans
    ADD CONSTRAINT dcim_interface_tagged_vlans_interface_id_vlan_id_0d55c576_uniq UNIQUE (interface_id, vlan_id);


--
-- Name: dcim_interface_tagged_vlans dcim_interface_tagged_vlans_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_interface_tagged_vlans
    ADD CONSTRAINT dcim_interface_tagged_vlans_pkey PRIMARY KEY (id);


--
-- Name: dcim_interfacetemplate dcim_interfacetemplate_device_type_id_name_3a847237_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_interfacetemplate
    ADD CONSTRAINT dcim_interfacetemplate_device_type_id_name_3a847237_uniq UNIQUE (device_type_id, name);


--
-- Name: dcim_interfacetemplate dcim_interfacetemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_interfacetemplate
    ADD CONSTRAINT dcim_interfacetemplate_pkey PRIMARY KEY (id);


--
-- Name: dcim_inventoryitem dcim_inventoryitem_asset_tag_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_inventoryitem
    ADD CONSTRAINT dcim_inventoryitem_asset_tag_key UNIQUE (asset_tag);


--
-- Name: dcim_inventoryitem dcim_inventoryitem_device_id_parent_id_name_bb84bd2b_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_inventoryitem
    ADD CONSTRAINT dcim_inventoryitem_device_id_parent_id_name_bb84bd2b_uniq UNIQUE (device_id, parent_id, name);


--
-- Name: dcim_inventoryitem dcim_inventoryitem_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_inventoryitem
    ADD CONSTRAINT dcim_inventoryitem_pkey PRIMARY KEY (id);


--
-- Name: dcim_manufacturer dcim_manufacturer_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_manufacturer
    ADD CONSTRAINT dcim_manufacturer_name_key UNIQUE (name);


--
-- Name: dcim_manufacturer dcim_manufacturer_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_manufacturer
    ADD CONSTRAINT dcim_manufacturer_pkey PRIMARY KEY (id);


--
-- Name: dcim_manufacturer dcim_manufacturer_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_manufacturer
    ADD CONSTRAINT dcim_manufacturer_slug_key UNIQUE (slug);


--
-- Name: dcim_platform dcim_platform_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_platform
    ADD CONSTRAINT dcim_platform_name_key UNIQUE (name);


--
-- Name: dcim_platform dcim_platform_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_platform
    ADD CONSTRAINT dcim_platform_pkey PRIMARY KEY (id);


--
-- Name: dcim_platform dcim_platform_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_platform
    ADD CONSTRAINT dcim_platform_slug_key UNIQUE (slug);


--
-- Name: dcim_powerfeed dcim_powerfeed_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed_pkey PRIMARY KEY (id);


--
-- Name: dcim_powerfeed dcim_powerfeed_power_panel_id_name_0fbaae9f_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed_power_panel_id_name_0fbaae9f_uniq UNIQUE (power_panel_id, name);


--
-- Name: dcim_poweroutlet dcim_poweroutlet_device_id_name_981b00c1_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet_device_id_name_981b00c1_uniq UNIQUE (device_id, name);


--
-- Name: dcim_poweroutlet dcim_poweroutlet_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet_pkey PRIMARY KEY (id);


--
-- Name: dcim_poweroutlettemplate dcim_poweroutlettemplate_device_type_id_name_eafbb07d_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_poweroutlettemplate
    ADD CONSTRAINT dcim_poweroutlettemplate_device_type_id_name_eafbb07d_uniq UNIQUE (device_type_id, name);


--
-- Name: dcim_poweroutlettemplate dcim_poweroutlettemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_poweroutlettemplate
    ADD CONSTRAINT dcim_poweroutlettemplate_pkey PRIMARY KEY (id);


--
-- Name: dcim_powerpanel dcim_powerpanel_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerpanel
    ADD CONSTRAINT dcim_powerpanel_pkey PRIMARY KEY (id);


--
-- Name: dcim_powerpanel dcim_powerpanel_site_id_name_804df4c0_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerpanel
    ADD CONSTRAINT dcim_powerpanel_site_id_name_804df4c0_uniq UNIQUE (site_id, name);


--
-- Name: dcim_powerport dcim_powerport_device_id_name_948af82c_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerport
    ADD CONSTRAINT dcim_powerport_device_id_name_948af82c_uniq UNIQUE (device_id, name);


--
-- Name: dcim_powerport dcim_powerport_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerport
    ADD CONSTRAINT dcim_powerport_pkey PRIMARY KEY (id);


--
-- Name: dcim_powerporttemplate dcim_powerporttemplate_device_type_id_name_b4e9689f_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerporttemplate
    ADD CONSTRAINT dcim_powerporttemplate_device_type_id_name_b4e9689f_uniq UNIQUE (device_type_id, name);


--
-- Name: dcim_powerporttemplate dcim_powerporttemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerporttemplate
    ADD CONSTRAINT dcim_powerporttemplate_pkey PRIMARY KEY (id);


--
-- Name: dcim_rack dcim_rack_asset_tag_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_asset_tag_key UNIQUE (asset_tag);


--
-- Name: dcim_rack dcim_rack_group_id_facility_id_f16a53ae_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_group_id_facility_id_f16a53ae_uniq UNIQUE (group_id, facility_id);


--
-- Name: dcim_rack dcim_rack_group_id_name_846f3826_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_group_id_name_846f3826_uniq UNIQUE (group_id, name);


--
-- Name: dcim_rack dcim_rack_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_pkey PRIMARY KEY (id);


--
-- Name: dcim_rackgroup dcim_rackgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rackgroup
    ADD CONSTRAINT dcim_rackgroup_pkey PRIMARY KEY (id);


--
-- Name: dcim_rackgroup dcim_rackgroup_site_id_name_c9bd921f_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rackgroup
    ADD CONSTRAINT dcim_rackgroup_site_id_name_c9bd921f_uniq UNIQUE (site_id, name);


--
-- Name: dcim_rackgroup dcim_rackgroup_site_id_slug_7fbfd118_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rackgroup
    ADD CONSTRAINT dcim_rackgroup_site_id_slug_7fbfd118_uniq UNIQUE (site_id, slug);


--
-- Name: dcim_rackreservation dcim_rackreservation_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rackreservation
    ADD CONSTRAINT dcim_rackreservation_pkey PRIMARY KEY (id);


--
-- Name: dcim_rackrole dcim_rackrole_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rackrole
    ADD CONSTRAINT dcim_rackrole_name_key UNIQUE (name);


--
-- Name: dcim_rackrole dcim_rackrole_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rackrole
    ADD CONSTRAINT dcim_rackrole_pkey PRIMARY KEY (id);


--
-- Name: dcim_rackrole dcim_rackrole_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rackrole
    ADD CONSTRAINT dcim_rackrole_slug_key UNIQUE (slug);


--
-- Name: dcim_rearport dcim_rearport_device_id_name_4b14dde6_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rearport
    ADD CONSTRAINT dcim_rearport_device_id_name_4b14dde6_uniq UNIQUE (device_id, name);


--
-- Name: dcim_rearport dcim_rearport_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rearport
    ADD CONSTRAINT dcim_rearport_pkey PRIMARY KEY (id);


--
-- Name: dcim_rearporttemplate dcim_rearporttemplate_device_type_id_name_9bdddb29_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rearporttemplate
    ADD CONSTRAINT dcim_rearporttemplate_device_type_id_name_9bdddb29_uniq UNIQUE (device_type_id, name);


--
-- Name: dcim_rearporttemplate dcim_rearporttemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rearporttemplate
    ADD CONSTRAINT dcim_rearporttemplate_pkey PRIMARY KEY (id);


--
-- Name: dcim_region dcim_region_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_region
    ADD CONSTRAINT dcim_region_name_key UNIQUE (name);


--
-- Name: dcim_region dcim_region_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_region
    ADD CONSTRAINT dcim_region_pkey PRIMARY KEY (id);


--
-- Name: dcim_region dcim_region_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_region
    ADD CONSTRAINT dcim_region_slug_key UNIQUE (slug);


--
-- Name: dcim_site dcim_site_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_site
    ADD CONSTRAINT dcim_site_name_key UNIQUE (name);


--
-- Name: dcim_site dcim_site_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_site
    ADD CONSTRAINT dcim_site_pkey PRIMARY KEY (id);


--
-- Name: dcim_site dcim_site_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_site
    ADD CONSTRAINT dcim_site_slug_key UNIQUE (slug);


--
-- Name: dcim_virtualchassis dcim_virtualchassis_master_id_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_virtualchassis
    ADD CONSTRAINT dcim_virtualchassis_master_id_key UNIQUE (master_id);


--
-- Name: dcim_virtualchassis dcim_virtualchassis_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_virtualchassis
    ADD CONSTRAINT dcim_virtualchassis_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: extras_configcontext_clusters extras_configcontext_clu_configcontext_id_cluster_0c7e5d20_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_clusters
    ADD CONSTRAINT extras_configcontext_clu_configcontext_id_cluster_0c7e5d20_uniq UNIQUE (configcontext_id, cluster_id);


--
-- Name: extras_configcontext_cluster_groups extras_configcontext_clu_configcontext_id_cluster_bc530192_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_cluster_groups
    ADD CONSTRAINT extras_configcontext_clu_configcontext_id_cluster_bc530192_uniq UNIQUE (configcontext_id, clustergroup_id);


--
-- Name: extras_configcontext_cluster_groups extras_configcontext_cluster_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_cluster_groups
    ADD CONSTRAINT extras_configcontext_cluster_groups_pkey PRIMARY KEY (id);


--
-- Name: extras_configcontext_clusters extras_configcontext_clusters_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_clusters
    ADD CONSTRAINT extras_configcontext_clusters_pkey PRIMARY KEY (id);


--
-- Name: extras_configcontext extras_configcontext_name_owner_content_type__c289e08f_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext
    ADD CONSTRAINT extras_configcontext_name_owner_content_type__c289e08f_uniq UNIQUE (name, owner_content_type_id, owner_object_id);


--
-- Name: extras_configcontext extras_configcontext_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext
    ADD CONSTRAINT extras_configcontext_pkey PRIMARY KEY (id);


--
-- Name: extras_configcontext_platforms extras_configcontext_pla_configcontext_id_platfor_3c67c104_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_platforms
    ADD CONSTRAINT extras_configcontext_pla_configcontext_id_platfor_3c67c104_uniq UNIQUE (configcontext_id, platform_id);


--
-- Name: extras_configcontext_platforms extras_configcontext_platforms_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_platforms
    ADD CONSTRAINT extras_configcontext_platforms_pkey PRIMARY KEY (id);


--
-- Name: extras_configcontext_regions extras_configcontext_reg_configcontext_id_region__d4a1d77f_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_regions
    ADD CONSTRAINT extras_configcontext_reg_configcontext_id_region__d4a1d77f_uniq UNIQUE (configcontext_id, region_id);


--
-- Name: extras_configcontext_regions extras_configcontext_regions_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_regions
    ADD CONSTRAINT extras_configcontext_regions_pkey PRIMARY KEY (id);


--
-- Name: extras_configcontext_roles extras_configcontext_rol_configcontext_id_devicer_4d8dbb50_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_roles
    ADD CONSTRAINT extras_configcontext_rol_configcontext_id_devicer_4d8dbb50_uniq UNIQUE (configcontext_id, devicerole_id);


--
-- Name: extras_configcontext_roles extras_configcontext_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_roles
    ADD CONSTRAINT extras_configcontext_roles_pkey PRIMARY KEY (id);


--
-- Name: extras_configcontext_sites extras_configcontext_sit_configcontext_id_site_id_a4fe5f4f_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_sites
    ADD CONSTRAINT extras_configcontext_sit_configcontext_id_site_id_a4fe5f4f_uniq UNIQUE (configcontext_id, site_id);


--
-- Name: extras_configcontext_sites extras_configcontext_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_sites
    ADD CONSTRAINT extras_configcontext_sites_pkey PRIMARY KEY (id);


--
-- Name: extras_configcontext_tags extras_configcontext_tags_configcontext_id_tag_id_f6c53016_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_tags
    ADD CONSTRAINT extras_configcontext_tags_configcontext_id_tag_id_f6c53016_uniq UNIQUE (configcontext_id, tag_id);


--
-- Name: extras_configcontext_tags extras_configcontext_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_tags
    ADD CONSTRAINT extras_configcontext_tags_pkey PRIMARY KEY (id);


--
-- Name: extras_configcontext_tenants extras_configcontext_ten_configcontext_id_tenant__aefb257d_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_tenants
    ADD CONSTRAINT extras_configcontext_ten_configcontext_id_tenant__aefb257d_uniq UNIQUE (configcontext_id, tenant_id);


--
-- Name: extras_configcontext_tenant_groups extras_configcontext_ten_configcontext_id_tenantg_d6afc6f5_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_tenant_groups
    ADD CONSTRAINT extras_configcontext_ten_configcontext_id_tenantg_d6afc6f5_uniq UNIQUE (configcontext_id, tenantgroup_id);


--
-- Name: extras_configcontext_tenant_groups extras_configcontext_tenant_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_tenant_groups
    ADD CONSTRAINT extras_configcontext_tenant_groups_pkey PRIMARY KEY (id);


--
-- Name: extras_configcontext_tenants extras_configcontext_tenants_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_tenants
    ADD CONSTRAINT extras_configcontext_tenants_pkey PRIMARY KEY (id);


--
-- Name: extras_customfield_content_types extras_customfield_conte_customfield_id_contentty_51136c2b_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_customfield_content_types
    ADD CONSTRAINT extras_customfield_conte_customfield_id_contentty_51136c2b_uniq UNIQUE (customfield_id, contenttype_id);


--
-- Name: extras_customfield_content_types extras_customfield_content_types_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_customfield_content_types
    ADD CONSTRAINT extras_customfield_content_types_pkey PRIMARY KEY (id);


--
-- Name: extras_customfield extras_customfield_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_customfield
    ADD CONSTRAINT extras_customfield_name_key UNIQUE (name);


--
-- Name: extras_customfield extras_customfield_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_customfield
    ADD CONSTRAINT extras_customfield_pkey PRIMARY KEY (id);


--
-- Name: extras_customfieldchoice extras_customfieldchoice_field_id_value_f959a108_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_customfieldchoice
    ADD CONSTRAINT extras_customfieldchoice_field_id_value_f959a108_uniq UNIQUE (field_id, value);


--
-- Name: extras_customfieldchoice extras_customfieldchoice_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_customfieldchoice
    ADD CONSTRAINT extras_customfieldchoice_pkey PRIMARY KEY (id);


--
-- Name: extras_customlink extras_customlink_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_customlink
    ADD CONSTRAINT extras_customlink_name_key UNIQUE (name);


--
-- Name: extras_customlink extras_customlink_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_customlink
    ADD CONSTRAINT extras_customlink_pkey PRIMARY KEY (id);


--
-- Name: extras_exporttemplate extras_exporttemplate_content_type_id_name_own_3b6ea31b_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_exporttemplate
    ADD CONSTRAINT extras_exporttemplate_content_type_id_name_own_3b6ea31b_uniq UNIQUE (content_type_id, name, owner_content_type_id, owner_object_id);


--
-- Name: extras_exporttemplate extras_exporttemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_exporttemplate
    ADD CONSTRAINT extras_exporttemplate_pkey PRIMARY KEY (id);


--
-- Name: extras_gitrepository extras_gitrepository_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_gitrepository
    ADD CONSTRAINT extras_gitrepository_name_key UNIQUE (name);


--
-- Name: extras_gitrepository extras_gitrepository_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_gitrepository
    ADD CONSTRAINT extras_gitrepository_pkey PRIMARY KEY (id);


--
-- Name: extras_gitrepository extras_gitrepository_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_gitrepository
    ADD CONSTRAINT extras_gitrepository_slug_key UNIQUE (slug);


--
-- Name: extras_imageattachment extras_imageattachment_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_imageattachment
    ADD CONSTRAINT extras_imageattachment_pkey PRIMARY KEY (id);


--
-- Name: extras_jobresult extras_jobresult_job_id_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_jobresult
    ADD CONSTRAINT extras_jobresult_job_id_key UNIQUE (job_id);


--
-- Name: extras_jobresult extras_jobresult_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_jobresult
    ADD CONSTRAINT extras_jobresult_pkey PRIMARY KEY (id);


--
-- Name: extras_objectchange extras_objectchange_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_objectchange
    ADD CONSTRAINT extras_objectchange_pkey PRIMARY KEY (id);


--
-- Name: extras_relationship extras_relationship_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_relationship
    ADD CONSTRAINT extras_relationship_name_key UNIQUE (name);


--
-- Name: extras_relationship extras_relationship_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_relationship
    ADD CONSTRAINT extras_relationship_pkey PRIMARY KEY (id);


--
-- Name: extras_relationship extras_relationship_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_relationship
    ADD CONSTRAINT extras_relationship_slug_key UNIQUE (slug);


--
-- Name: extras_relationshipassociation extras_relationshipassoc_relationship_id_source_t_6826a98b_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_relationshipassociation
    ADD CONSTRAINT extras_relationshipassoc_relationship_id_source_t_6826a98b_uniq UNIQUE (relationship_id, source_type_id, source_id, destination_type_id, destination_id);


--
-- Name: extras_relationshipassociation extras_relationshipassociation_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_relationshipassociation
    ADD CONSTRAINT extras_relationshipassociation_pkey PRIMARY KEY (id);


--
-- Name: extras_status_content_types extras_status_content_ty_status_id_contenttype_id_423e142c_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_status_content_types
    ADD CONSTRAINT extras_status_content_ty_status_id_contenttype_id_423e142c_uniq UNIQUE (status_id, contenttype_id);


--
-- Name: extras_status_content_types extras_status_content_types_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_status_content_types
    ADD CONSTRAINT extras_status_content_types_pkey PRIMARY KEY (id);


--
-- Name: extras_status extras_status_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_status
    ADD CONSTRAINT extras_status_name_key UNIQUE (name);


--
-- Name: extras_status extras_status_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_status
    ADD CONSTRAINT extras_status_pkey PRIMARY KEY (id);


--
-- Name: extras_status extras_status_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_status
    ADD CONSTRAINT extras_status_slug_key UNIQUE (slug);


--
-- Name: extras_tag extras_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_tag
    ADD CONSTRAINT extras_tag_name_key UNIQUE (name);


--
-- Name: extras_tag extras_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_tag
    ADD CONSTRAINT extras_tag_pkey PRIMARY KEY (id);


--
-- Name: extras_tag extras_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_tag
    ADD CONSTRAINT extras_tag_slug_key UNIQUE (slug);


--
-- Name: extras_taggeditem extras_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_taggeditem
    ADD CONSTRAINT extras_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: extras_webhook_content_types extras_webhook_content_t_webhook_id_contenttype_i_485b9e93_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_webhook_content_types
    ADD CONSTRAINT extras_webhook_content_t_webhook_id_contenttype_i_485b9e93_uniq UNIQUE (webhook_id, contenttype_id);


--
-- Name: extras_webhook_content_types extras_webhook_content_types_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_webhook_content_types
    ADD CONSTRAINT extras_webhook_content_types_pkey PRIMARY KEY (id);


--
-- Name: extras_webhook extras_webhook_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_webhook
    ADD CONSTRAINT extras_webhook_name_key UNIQUE (name);


--
-- Name: extras_webhook extras_webhook_payload_url_type_create__dd332134_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_webhook
    ADD CONSTRAINT extras_webhook_payload_url_type_create__dd332134_uniq UNIQUE (payload_url, type_create, type_update, type_delete);


--
-- Name: extras_webhook extras_webhook_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_webhook
    ADD CONSTRAINT extras_webhook_pkey PRIMARY KEY (id);


--
-- Name: ipam_aggregate ipam_aggregate_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_aggregate
    ADD CONSTRAINT ipam_aggregate_pkey PRIMARY KEY (id);


--
-- Name: ipam_ipaddress ipam_ipaddress_nat_inside_id_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_nat_inside_id_key UNIQUE (nat_inside_id);


--
-- Name: ipam_ipaddress ipam_ipaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_pkey PRIMARY KEY (id);


--
-- Name: ipam_prefix ipam_prefix_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_pkey PRIMARY KEY (id);


--
-- Name: ipam_rir ipam_rir_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_rir
    ADD CONSTRAINT ipam_rir_name_key UNIQUE (name);


--
-- Name: ipam_rir ipam_rir_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_rir
    ADD CONSTRAINT ipam_rir_pkey PRIMARY KEY (id);


--
-- Name: ipam_rir ipam_rir_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_rir
    ADD CONSTRAINT ipam_rir_slug_key UNIQUE (slug);


--
-- Name: ipam_role ipam_role_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_role
    ADD CONSTRAINT ipam_role_name_key UNIQUE (name);


--
-- Name: ipam_role ipam_role_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_role
    ADD CONSTRAINT ipam_role_pkey PRIMARY KEY (id);


--
-- Name: ipam_role ipam_role_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_role
    ADD CONSTRAINT ipam_role_slug_key UNIQUE (slug);


--
-- Name: ipam_routetarget ipam_routetarget_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_routetarget
    ADD CONSTRAINT ipam_routetarget_name_key UNIQUE (name);


--
-- Name: ipam_routetarget ipam_routetarget_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_routetarget
    ADD CONSTRAINT ipam_routetarget_pkey PRIMARY KEY (id);


--
-- Name: ipam_service_ipaddresses ipam_service_ipaddresses_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_service_ipaddresses
    ADD CONSTRAINT ipam_service_ipaddresses_pkey PRIMARY KEY (id);


--
-- Name: ipam_service_ipaddresses ipam_service_ipaddresses_service_id_ipaddress_id_d019a805_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_service_ipaddresses
    ADD CONSTRAINT ipam_service_ipaddresses_service_id_ipaddress_id_d019a805_uniq UNIQUE (service_id, ipaddress_id);


--
-- Name: ipam_service ipam_service_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_service
    ADD CONSTRAINT ipam_service_pkey PRIMARY KEY (id);


--
-- Name: ipam_vlan ipam_vlan_group_id_name_e53919df_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_group_id_name_e53919df_uniq UNIQUE (group_id, name);


--
-- Name: ipam_vlan ipam_vlan_group_id_vid_5ca4cc47_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_group_id_vid_5ca4cc47_uniq UNIQUE (group_id, vid);


--
-- Name: ipam_vlan ipam_vlan_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_pkey PRIMARY KEY (id);


--
-- Name: ipam_vlangroup ipam_vlangroup_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vlangroup
    ADD CONSTRAINT ipam_vlangroup_pkey PRIMARY KEY (id);


--
-- Name: ipam_vlangroup ipam_vlangroup_site_id_name_a38e981b_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vlangroup
    ADD CONSTRAINT ipam_vlangroup_site_id_name_a38e981b_uniq UNIQUE (site_id, name);


--
-- Name: ipam_vlangroup ipam_vlangroup_site_id_slug_6372a304_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vlangroup
    ADD CONSTRAINT ipam_vlangroup_site_id_slug_6372a304_uniq UNIQUE (site_id, slug);


--
-- Name: ipam_vrf_export_targets ipam_vrf_export_targets_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vrf_export_targets
    ADD CONSTRAINT ipam_vrf_export_targets_pkey PRIMARY KEY (id);


--
-- Name: ipam_vrf_export_targets ipam_vrf_export_targets_vrf_id_routetarget_id_63ba8c62_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vrf_export_targets
    ADD CONSTRAINT ipam_vrf_export_targets_vrf_id_routetarget_id_63ba8c62_uniq UNIQUE (vrf_id, routetarget_id);


--
-- Name: ipam_vrf_import_targets ipam_vrf_import_targets_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vrf_import_targets
    ADD CONSTRAINT ipam_vrf_import_targets_pkey PRIMARY KEY (id);


--
-- Name: ipam_vrf_import_targets ipam_vrf_import_targets_vrf_id_routetarget_id_399b155f_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vrf_import_targets
    ADD CONSTRAINT ipam_vrf_import_targets_vrf_id_routetarget_id_399b155f_uniq UNIQUE (vrf_id, routetarget_id);


--
-- Name: ipam_vrf ipam_vrf_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vrf
    ADD CONSTRAINT ipam_vrf_pkey PRIMARY KEY (id);


--
-- Name: ipam_vrf ipam_vrf_rd_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vrf
    ADD CONSTRAINT ipam_vrf_rd_key UNIQUE (rd);


--
-- Name: nautobot_device_onboarding_onboardingdevice nautobot_device_onboarding_onboardingdevice_device_id_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.nautobot_device_onboarding_onboardingdevice
    ADD CONSTRAINT nautobot_device_onboarding_onboardingdevice_device_id_key UNIQUE (device_id);


--
-- Name: nautobot_device_onboarding_onboardingdevice nautobot_device_onboarding_onboardingdevice_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.nautobot_device_onboarding_onboardingdevice
    ADD CONSTRAINT nautobot_device_onboarding_onboardingdevice_pkey PRIMARY KEY (id);


--
-- Name: nautobot_device_onboarding_onboardingtask nautobot_device_onboarding_onboardingtask_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.nautobot_device_onboarding_onboardingtask
    ADD CONSTRAINT nautobot_device_onboarding_onboardingtask_pkey PRIMARY KEY (id);


--
-- Name: social_auth_association social_auth_association_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.social_auth_association
    ADD CONSTRAINT social_auth_association_pkey PRIMARY KEY (id);


--
-- Name: social_auth_association social_auth_association_server_url_handle_078befa2_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.social_auth_association
    ADD CONSTRAINT social_auth_association_server_url_handle_078befa2_uniq UNIQUE (server_url, handle);


--
-- Name: social_auth_code social_auth_code_email_code_801b2d02_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.social_auth_code
    ADD CONSTRAINT social_auth_code_email_code_801b2d02_uniq UNIQUE (email, code);


--
-- Name: social_auth_code social_auth_code_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.social_auth_code
    ADD CONSTRAINT social_auth_code_pkey PRIMARY KEY (id);


--
-- Name: social_auth_nonce social_auth_nonce_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_pkey PRIMARY KEY (id);


--
-- Name: social_auth_nonce social_auth_nonce_server_url_timestamp_salt_f6284463_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.social_auth_nonce
    ADD CONSTRAINT social_auth_nonce_server_url_timestamp_salt_f6284463_uniq UNIQUE (server_url, "timestamp", salt);


--
-- Name: social_auth_partial social_auth_partial_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.social_auth_partial
    ADD CONSTRAINT social_auth_partial_pkey PRIMARY KEY (id);


--
-- Name: social_auth_usersocialauth social_auth_usersocialauth_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_pkey PRIMARY KEY (id);


--
-- Name: social_auth_usersocialauth social_auth_usersocialauth_provider_uid_e6b5e668_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_provider_uid_e6b5e668_uniq UNIQUE (provider, uid);


--
-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);


--
-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: tenancy_tenant tenancy_tenant_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.tenancy_tenant
    ADD CONSTRAINT tenancy_tenant_name_key UNIQUE (name);


--
-- Name: tenancy_tenant tenancy_tenant_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.tenancy_tenant
    ADD CONSTRAINT tenancy_tenant_pkey PRIMARY KEY (id);


--
-- Name: tenancy_tenant tenancy_tenant_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.tenancy_tenant
    ADD CONSTRAINT tenancy_tenant_slug_key UNIQUE (slug);


--
-- Name: tenancy_tenantgroup tenancy_tenantgroup_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.tenancy_tenantgroup
    ADD CONSTRAINT tenancy_tenantgroup_name_key UNIQUE (name);


--
-- Name: tenancy_tenantgroup tenancy_tenantgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.tenancy_tenantgroup
    ADD CONSTRAINT tenancy_tenantgroup_pkey PRIMARY KEY (id);


--
-- Name: tenancy_tenantgroup tenancy_tenantgroup_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.tenancy_tenantgroup
    ADD CONSTRAINT tenancy_tenantgroup_slug_key UNIQUE (slug);


--
-- Name: users_objectpermission_groups users_objectpermission_g_objectpermission_id_grou_3b62a39c_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_objectpermission_groups
    ADD CONSTRAINT users_objectpermission_g_objectpermission_id_grou_3b62a39c_uniq UNIQUE (objectpermission_id, group_id);


--
-- Name: users_objectpermission_groups users_objectpermission_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_objectpermission_groups
    ADD CONSTRAINT users_objectpermission_groups_pkey PRIMARY KEY (id);


--
-- Name: users_objectpermission_object_types users_objectpermission_o_objectpermission_id_cont_7c40d31a_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_objectpermission_object_types
    ADD CONSTRAINT users_objectpermission_o_objectpermission_id_cont_7c40d31a_uniq UNIQUE (objectpermission_id, contenttype_id);


--
-- Name: users_objectpermission_object_types users_objectpermission_object_types_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_objectpermission_object_types
    ADD CONSTRAINT users_objectpermission_object_types_pkey PRIMARY KEY (id);


--
-- Name: users_objectpermission users_objectpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_objectpermission
    ADD CONSTRAINT users_objectpermission_pkey PRIMARY KEY (id);


--
-- Name: users_objectpermission_users users_objectpermission_u_objectpermission_id_user_3a7db108_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_objectpermission_users
    ADD CONSTRAINT users_objectpermission_u_objectpermission_id_user_3a7db108_uniq UNIQUE (objectpermission_id, user_id);


--
-- Name: users_objectpermission_users users_objectpermission_users_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_objectpermission_users
    ADD CONSTRAINT users_objectpermission_users_pkey PRIMARY KEY (id);


--
-- Name: users_token users_token_key_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_token
    ADD CONSTRAINT users_token_key_key UNIQUE (key);


--
-- Name: users_token users_token_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_token
    ADD CONSTRAINT users_token_pkey PRIMARY KEY (id);


--
-- Name: virtualization_cluster virtualization_cluster_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_cluster
    ADD CONSTRAINT virtualization_cluster_name_key UNIQUE (name);


--
-- Name: virtualization_cluster virtualization_cluster_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_cluster
    ADD CONSTRAINT virtualization_cluster_pkey PRIMARY KEY (id);


--
-- Name: virtualization_clustergroup virtualization_clustergroup_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_clustergroup
    ADD CONSTRAINT virtualization_clustergroup_name_key UNIQUE (name);


--
-- Name: virtualization_clustergroup virtualization_clustergroup_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_clustergroup
    ADD CONSTRAINT virtualization_clustergroup_pkey PRIMARY KEY (id);


--
-- Name: virtualization_clustergroup virtualization_clustergroup_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_clustergroup
    ADD CONSTRAINT virtualization_clustergroup_slug_key UNIQUE (slug);


--
-- Name: virtualization_clustertype virtualization_clustertype_name_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_clustertype
    ADD CONSTRAINT virtualization_clustertype_name_key UNIQUE (name);


--
-- Name: virtualization_clustertype virtualization_clustertype_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_clustertype
    ADD CONSTRAINT virtualization_clustertype_pkey PRIMARY KEY (id);


--
-- Name: virtualization_clustertype virtualization_clustertype_slug_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_clustertype
    ADD CONSTRAINT virtualization_clustertype_slug_key UNIQUE (slug);


--
-- Name: virtualization_virtualmachine virtualization_virtualma_cluster_id_tenant_id_nam_56c69afb_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtualma_cluster_id_tenant_id_nam_56c69afb_uniq UNIQUE (cluster_id, tenant_id, name);


--
-- Name: virtualization_virtualmachine virtualization_virtualmachine_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtualmachine_pkey PRIMARY KEY (id);


--
-- Name: virtualization_virtualmachine virtualization_virtualmachine_primary_ip4_id_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtualmachine_primary_ip4_id_key UNIQUE (primary_ip4_id);


--
-- Name: virtualization_virtualmachine virtualization_virtualmachine_primary_ip6_id_key; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtualmachine_primary_ip6_id_key UNIQUE (primary_ip6_id);


--
-- Name: virtualization_vminterface virtualization_vminterfa_virtual_machine_id_name_cfb9c423_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_vminterface
    ADD CONSTRAINT virtualization_vminterfa_virtual_machine_id_name_cfb9c423_uniq UNIQUE (virtual_machine_id, name);


--
-- Name: virtualization_vminterface_tagged_vlans virtualization_vminterfa_vminterface_id_vlan_id_27e907db_uniq; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans
    ADD CONSTRAINT virtualization_vminterfa_vminterface_id_vlan_id_27e907db_uniq UNIQUE (vminterface_id, vlan_id);


--
-- Name: virtualization_vminterface virtualization_vminterface_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_vminterface
    ADD CONSTRAINT virtualization_vminterface_pkey PRIMARY KEY (id);


--
-- Name: virtualization_vminterface_tagged_vlans virtualization_vminterface_tagged_vlans_pkey; Type: CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans
    ADD CONSTRAINT virtualization_vminterface_tagged_vlans_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: circuits_circuit_provider_id_d9195418; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX circuits_circuit_provider_id_d9195418 ON public.circuits_circuit USING btree (provider_id);


--
-- Name: circuits_circuit_status_id_6433793f; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX circuits_circuit_status_id_6433793f ON public.circuits_circuit USING btree (status_id);


--
-- Name: circuits_circuit_tenant_id_812508a5; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX circuits_circuit_tenant_id_812508a5 ON public.circuits_circuit USING btree (tenant_id);


--
-- Name: circuits_circuit_type_id_1b9f485a; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX circuits_circuit_type_id_1b9f485a ON public.circuits_circuit USING btree (type_id);


--
-- Name: circuits_circuittermination__cable_peer_type_id_bd122156; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX circuits_circuittermination__cable_peer_type_id_bd122156 ON public.circuits_circuittermination USING btree (_cable_peer_type_id);


--
-- Name: circuits_circuittermination__path_id_6dfd8db0; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX circuits_circuittermination__path_id_6dfd8db0 ON public.circuits_circuittermination USING btree (_path_id);


--
-- Name: circuits_circuittermination_cable_id_35e9f703; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX circuits_circuittermination_cable_id_35e9f703 ON public.circuits_circuittermination USING btree (cable_id);


--
-- Name: circuits_circuittermination_circuit_id_257e87e7; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX circuits_circuittermination_circuit_id_257e87e7 ON public.circuits_circuittermination USING btree (circuit_id);


--
-- Name: circuits_circuittermination_site_id_e6fe5652; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX circuits_circuittermination_site_id_e6fe5652 ON public.circuits_circuittermination USING btree (site_id);


--
-- Name: circuits_circuittype_name_8256ea9a_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX circuits_circuittype_name_8256ea9a_like ON public.circuits_circuittype USING btree (name varchar_pattern_ops);


--
-- Name: circuits_circuittype_slug_9b4b3cf9_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX circuits_circuittype_slug_9b4b3cf9_like ON public.circuits_circuittype USING btree (slug varchar_pattern_ops);


--
-- Name: circuits_provider_name_8f2514f5_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX circuits_provider_name_8f2514f5_like ON public.circuits_provider USING btree (name varchar_pattern_ops);


--
-- Name: circuits_provider_slug_c3c0aa10_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX circuits_provider_slug_c3c0aa10_like ON public.circuits_provider USING btree (slug varchar_pattern_ops);


--
-- Name: dcim_cable__termination_a_device_id_e59cde1c; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_cable__termination_a_device_id_e59cde1c ON public.dcim_cable USING btree (_termination_a_device_id);


--
-- Name: dcim_cable__termination_b_device_id_a9073762; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_cable__termination_b_device_id_a9073762 ON public.dcim_cable USING btree (_termination_b_device_id);


--
-- Name: dcim_cable_status_id_6a580869; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_cable_status_id_6a580869 ON public.dcim_cable USING btree (status_id);


--
-- Name: dcim_cable_termination_a_type_id_a614bab8; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_cable_termination_a_type_id_a614bab8 ON public.dcim_cable USING btree (termination_a_type_id);


--
-- Name: dcim_cable_termination_b_type_id_a91595d0; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_cable_termination_b_type_id_a91595d0 ON public.dcim_cable USING btree (termination_b_type_id);


--
-- Name: dcim_cablepath_destination_type_id_a8c1654b; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_cablepath_destination_type_id_a8c1654b ON public.dcim_cablepath USING btree (destination_type_id);


--
-- Name: dcim_cablepath_origin_type_id_6de54f6d; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_cablepath_origin_type_id_6de54f6d ON public.dcim_cablepath USING btree (origin_type_id);


--
-- Name: dcim_consoleport__cable_peer_type_id_52adb1be; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_consoleport__cable_peer_type_id_52adb1be ON public.dcim_consoleport USING btree (_cable_peer_type_id);


--
-- Name: dcim_consoleport__path_id_e40a4436; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_consoleport__path_id_e40a4436 ON public.dcim_consoleport USING btree (_path_id);


--
-- Name: dcim_consoleport_cable_id_a9ae5465; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_consoleport_cable_id_a9ae5465 ON public.dcim_consoleport USING btree (cable_id);


--
-- Name: dcim_consoleport_device_id_f2d90d3c; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_consoleport_device_id_f2d90d3c ON public.dcim_consoleport USING btree (device_id);


--
-- Name: dcim_consoleporttemplate_device_type_id_075d4015; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_consoleporttemplate_device_type_id_075d4015 ON public.dcim_consoleporttemplate USING btree (device_type_id);


--
-- Name: dcim_consoleserverport__cable_peer_type_id_132b6744; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_consoleserverport__cable_peer_type_id_132b6744 ON public.dcim_consoleserverport USING btree (_cable_peer_type_id);


--
-- Name: dcim_consoleserverport__path_id_dc5abe09; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_consoleserverport__path_id_dc5abe09 ON public.dcim_consoleserverport USING btree (_path_id);


--
-- Name: dcim_consoleserverport_cable_id_f2940dfd; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_consoleserverport_cable_id_f2940dfd ON public.dcim_consoleserverport USING btree (cable_id);


--
-- Name: dcim_consoleserverport_device_id_d9866581; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_consoleserverport_device_id_d9866581 ON public.dcim_consoleserverport USING btree (device_id);


--
-- Name: dcim_consoleserverporttemplate_device_type_id_579bdc86; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_consoleserverporttemplate_device_type_id_579bdc86 ON public.dcim_consoleserverporttemplate USING btree (device_type_id);


--
-- Name: dcim_device_asset_tag_8dac1079_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_device_asset_tag_8dac1079_like ON public.dcim_device USING btree (asset_tag varchar_pattern_ops);


--
-- Name: dcim_device_cluster_id_cf852f78; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_device_cluster_id_cf852f78 ON public.dcim_device USING btree (cluster_id);


--
-- Name: dcim_device_device_role_id_682e8188; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_device_device_role_id_682e8188 ON public.dcim_device USING btree (device_role_id);


--
-- Name: dcim_device_device_type_id_d61b4086; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_device_device_type_id_d61b4086 ON public.dcim_device USING btree (device_type_id);


--
-- Name: dcim_device_local_context_data_owner_content_type_id_5d06013b; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_device_local_context_data_owner_content_type_id_5d06013b ON public.dcim_device USING btree (local_context_data_owner_content_type_id);


--
-- Name: dcim_device_platform_id_468138f1; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_device_platform_id_468138f1 ON public.dcim_device USING btree (platform_id);


--
-- Name: dcim_device_rack_id_23bde71f; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_device_rack_id_23bde71f ON public.dcim_device USING btree (rack_id);


--
-- Name: dcim_device_site_id_ff897cf6; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_device_site_id_ff897cf6 ON public.dcim_device USING btree (site_id);


--
-- Name: dcim_device_status_id_96d2fc6f; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_device_status_id_96d2fc6f ON public.dcim_device USING btree (status_id);


--
-- Name: dcim_device_tenant_id_dcea7969; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_device_tenant_id_dcea7969 ON public.dcim_device USING btree (tenant_id);


--
-- Name: dcim_device_virtual_chassis_id_aed51693; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_device_virtual_chassis_id_aed51693 ON public.dcim_device USING btree (virtual_chassis_id);


--
-- Name: dcim_devicebay_device_id_0c8a1218; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_devicebay_device_id_0c8a1218 ON public.dcim_devicebay USING btree (device_id);


--
-- Name: dcim_devicebaytemplate_device_type_id_f4b24a29; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_devicebaytemplate_device_type_id_f4b24a29 ON public.dcim_devicebaytemplate USING btree (device_type_id);


--
-- Name: dcim_devicerole_name_1c813306_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_devicerole_name_1c813306_like ON public.dcim_devicerole USING btree (name varchar_pattern_ops);


--
-- Name: dcim_devicerole_slug_7952643b_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_devicerole_slug_7952643b_like ON public.dcim_devicerole USING btree (slug varchar_pattern_ops);


--
-- Name: dcim_devicetype_manufacturer_id_a3e8029e; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_devicetype_manufacturer_id_a3e8029e ON public.dcim_devicetype USING btree (manufacturer_id);


--
-- Name: dcim_devicetype_slug_448745bd; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_devicetype_slug_448745bd ON public.dcim_devicetype USING btree (slug);


--
-- Name: dcim_devicetype_slug_448745bd_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_devicetype_slug_448745bd_like ON public.dcim_devicetype USING btree (slug varchar_pattern_ops);


--
-- Name: dcim_frontport__cable_peer_type_id_c4690f56; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_frontport__cable_peer_type_id_c4690f56 ON public.dcim_frontport USING btree (_cable_peer_type_id);


--
-- Name: dcim_frontport_cable_id_04ff8aab; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_frontport_cable_id_04ff8aab ON public.dcim_frontport USING btree (cable_id);


--
-- Name: dcim_frontport_device_id_950557b5; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_frontport_device_id_950557b5 ON public.dcim_frontport USING btree (device_id);


--
-- Name: dcim_frontport_rear_port_id_78df2532; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_frontport_rear_port_id_78df2532 ON public.dcim_frontport USING btree (rear_port_id);


--
-- Name: dcim_frontporttemplate_device_type_id_f088b952; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_frontporttemplate_device_type_id_f088b952 ON public.dcim_frontporttemplate USING btree (device_type_id);


--
-- Name: dcim_frontporttemplate_rear_port_id_9775411b; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_frontporttemplate_rear_port_id_9775411b ON public.dcim_frontporttemplate USING btree (rear_port_id);


--
-- Name: dcim_interface__cable_peer_type_id_ce52cb81; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_interface__cable_peer_type_id_ce52cb81 ON public.dcim_interface USING btree (_cable_peer_type_id);


--
-- Name: dcim_interface__path_id_f8f4f7f0; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_interface__path_id_f8f4f7f0 ON public.dcim_interface USING btree (_path_id);


--
-- Name: dcim_interface_cable_id_1b264edb; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_interface_cable_id_1b264edb ON public.dcim_interface USING btree (cable_id);


--
-- Name: dcim_interface_device_id_359c6115; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_interface_device_id_359c6115 ON public.dcim_interface USING btree (device_id);


--
-- Name: dcim_interface_lag_id_ea1a1d12; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_interface_lag_id_ea1a1d12 ON public.dcim_interface USING btree (lag_id);


--
-- Name: dcim_interface_tagged_vlans_interface_id_5870c9e9; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_interface_tagged_vlans_interface_id_5870c9e9 ON public.dcim_interface_tagged_vlans USING btree (interface_id);


--
-- Name: dcim_interface_tagged_vlans_vlan_id_e027005c; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_interface_tagged_vlans_vlan_id_e027005c ON public.dcim_interface_tagged_vlans USING btree (vlan_id);


--
-- Name: dcim_interface_untagged_vlan_id_838dc7be; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_interface_untagged_vlan_id_838dc7be ON public.dcim_interface USING btree (untagged_vlan_id);


--
-- Name: dcim_interfacetemplate_device_type_id_4bfcbfab; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_interfacetemplate_device_type_id_4bfcbfab ON public.dcim_interfacetemplate USING btree (device_type_id);


--
-- Name: dcim_inventoryitem_asset_tag_d3289273_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_inventoryitem_asset_tag_d3289273_like ON public.dcim_inventoryitem USING btree (asset_tag varchar_pattern_ops);


--
-- Name: dcim_inventoryitem_device_id_033d83f8; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_inventoryitem_device_id_033d83f8 ON public.dcim_inventoryitem USING btree (device_id);


--
-- Name: dcim_inventoryitem_manufacturer_id_dcd1b78a; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_inventoryitem_manufacturer_id_dcd1b78a ON public.dcim_inventoryitem USING btree (manufacturer_id);


--
-- Name: dcim_inventoryitem_parent_id_7ebcd457; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_inventoryitem_parent_id_7ebcd457 ON public.dcim_inventoryitem USING btree (parent_id);


--
-- Name: dcim_inventoryitem_tree_id_4676ade2; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_inventoryitem_tree_id_4676ade2 ON public.dcim_inventoryitem USING btree (tree_id);


--
-- Name: dcim_manufacturer_name_841fcd92_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_manufacturer_name_841fcd92_like ON public.dcim_manufacturer USING btree (name varchar_pattern_ops);


--
-- Name: dcim_manufacturer_slug_00430749_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_manufacturer_slug_00430749_like ON public.dcim_manufacturer USING btree (slug varchar_pattern_ops);


--
-- Name: dcim_platform_manufacturer_id_83f72d3d; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_platform_manufacturer_id_83f72d3d ON public.dcim_platform USING btree (manufacturer_id);


--
-- Name: dcim_platform_name_c2f04255_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_platform_name_c2f04255_like ON public.dcim_platform USING btree (name varchar_pattern_ops);


--
-- Name: dcim_platform_slug_b0908ae4_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_platform_slug_b0908ae4_like ON public.dcim_platform USING btree (slug varchar_pattern_ops);


--
-- Name: dcim_powerfeed__cable_peer_type_id_9f930589; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_powerfeed__cable_peer_type_id_9f930589 ON public.dcim_powerfeed USING btree (_cable_peer_type_id);


--
-- Name: dcim_powerfeed__path_id_a1ea1f28; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_powerfeed__path_id_a1ea1f28 ON public.dcim_powerfeed USING btree (_path_id);


--
-- Name: dcim_powerfeed_cable_id_ec44c4f8; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_powerfeed_cable_id_ec44c4f8 ON public.dcim_powerfeed USING btree (cable_id);


--
-- Name: dcim_powerfeed_power_panel_id_32bde3be; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_powerfeed_power_panel_id_32bde3be ON public.dcim_powerfeed USING btree (power_panel_id);


--
-- Name: dcim_powerfeed_rack_id_7abba090; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_powerfeed_rack_id_7abba090 ON public.dcim_powerfeed USING btree (rack_id);


--
-- Name: dcim_powerfeed_status_id_8c424cc3; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_powerfeed_status_id_8c424cc3 ON public.dcim_powerfeed USING btree (status_id);


--
-- Name: dcim_poweroutlet__cable_peer_type_id_bbff28d0; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_poweroutlet__cable_peer_type_id_bbff28d0 ON public.dcim_poweroutlet USING btree (_cable_peer_type_id);


--
-- Name: dcim_poweroutlet__path_id_cbb47bb9; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_poweroutlet__path_id_cbb47bb9 ON public.dcim_poweroutlet USING btree (_path_id);


--
-- Name: dcim_poweroutlet_cable_id_8dbea1ec; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_poweroutlet_cable_id_8dbea1ec ON public.dcim_poweroutlet USING btree (cable_id);


--
-- Name: dcim_poweroutlet_device_id_286351d7; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_poweroutlet_device_id_286351d7 ON public.dcim_poweroutlet USING btree (device_id);


--
-- Name: dcim_poweroutlet_power_port_id_9bdf4163; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_poweroutlet_power_port_id_9bdf4163 ON public.dcim_poweroutlet USING btree (power_port_id);


--
-- Name: dcim_poweroutlettemplate_device_type_id_26b2316c; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_poweroutlettemplate_device_type_id_26b2316c ON public.dcim_poweroutlettemplate USING btree (device_type_id);


--
-- Name: dcim_poweroutlettemplate_power_port_id_c0fb0c42; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_poweroutlettemplate_power_port_id_c0fb0c42 ON public.dcim_poweroutlettemplate USING btree (power_port_id);


--
-- Name: dcim_powerpanel_rack_group_id_76467cc9; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_powerpanel_rack_group_id_76467cc9 ON public.dcim_powerpanel USING btree (rack_group_id);


--
-- Name: dcim_powerpanel_site_id_c430bc89; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_powerpanel_site_id_c430bc89 ON public.dcim_powerpanel USING btree (site_id);


--
-- Name: dcim_powerport__cable_peer_type_id_9df2a278; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_powerport__cable_peer_type_id_9df2a278 ON public.dcim_powerport USING btree (_cable_peer_type_id);


--
-- Name: dcim_powerport__path_id_9fe4af8f; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_powerport__path_id_9fe4af8f ON public.dcim_powerport USING btree (_path_id);


--
-- Name: dcim_powerport_cable_id_c9682ba2; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_powerport_cable_id_c9682ba2 ON public.dcim_powerport USING btree (cable_id);


--
-- Name: dcim_powerport_device_id_ef7185ae; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_powerport_device_id_ef7185ae ON public.dcim_powerport USING btree (device_id);


--
-- Name: dcim_powerporttemplate_device_type_id_1ddfbfcc; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_powerporttemplate_device_type_id_1ddfbfcc ON public.dcim_powerporttemplate USING btree (device_type_id);


--
-- Name: dcim_rack_asset_tag_f88408e5_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rack_asset_tag_f88408e5_like ON public.dcim_rack USING btree (asset_tag varchar_pattern_ops);


--
-- Name: dcim_rack_group_id_44e90ea9; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rack_group_id_44e90ea9 ON public.dcim_rack USING btree (group_id);


--
-- Name: dcim_rack_role_id_62d6919e; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rack_role_id_62d6919e ON public.dcim_rack USING btree (role_id);


--
-- Name: dcim_rack_site_id_403c7b3a; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rack_site_id_403c7b3a ON public.dcim_rack USING btree (site_id);


--
-- Name: dcim_rack_status_id_ee3dee3e; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rack_status_id_ee3dee3e ON public.dcim_rack USING btree (status_id);


--
-- Name: dcim_rack_tenant_id_7cdf3725; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rack_tenant_id_7cdf3725 ON public.dcim_rack USING btree (tenant_id);


--
-- Name: dcim_rackgroup_parent_id_cc315105; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rackgroup_parent_id_cc315105 ON public.dcim_rackgroup USING btree (parent_id);


--
-- Name: dcim_rackgroup_site_id_13520e89; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rackgroup_site_id_13520e89 ON public.dcim_rackgroup USING btree (site_id);


--
-- Name: dcim_rackgroup_slug_3f4582a7; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rackgroup_slug_3f4582a7 ON public.dcim_rackgroup USING btree (slug);


--
-- Name: dcim_rackgroup_slug_3f4582a7_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rackgroup_slug_3f4582a7_like ON public.dcim_rackgroup USING btree (slug varchar_pattern_ops);


--
-- Name: dcim_rackgroup_tree_id_9c2ad6f4; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rackgroup_tree_id_9c2ad6f4 ON public.dcim_rackgroup USING btree (tree_id);


--
-- Name: dcim_rackreservation_rack_id_1ebbaa9b; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rackreservation_rack_id_1ebbaa9b ON public.dcim_rackreservation USING btree (rack_id);


--
-- Name: dcim_rackreservation_tenant_id_eb5e045f; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rackreservation_tenant_id_eb5e045f ON public.dcim_rackreservation USING btree (tenant_id);


--
-- Name: dcim_rackreservation_user_id_0785a527; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rackreservation_user_id_0785a527 ON public.dcim_rackreservation USING btree (user_id);


--
-- Name: dcim_rackrole_name_9077cfcc_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rackrole_name_9077cfcc_like ON public.dcim_rackrole USING btree (name varchar_pattern_ops);


--
-- Name: dcim_rackrole_slug_40bbcd3a_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rackrole_slug_40bbcd3a_like ON public.dcim_rackrole USING btree (slug varchar_pattern_ops);


--
-- Name: dcim_rearport__cable_peer_type_id_cecf241c; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rearport__cable_peer_type_id_cecf241c ON public.dcim_rearport USING btree (_cable_peer_type_id);


--
-- Name: dcim_rearport_cable_id_42c0e4e7; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rearport_cable_id_42c0e4e7 ON public.dcim_rearport USING btree (cable_id);


--
-- Name: dcim_rearport_device_id_0bdfe9c0; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rearport_device_id_0bdfe9c0 ON public.dcim_rearport USING btree (device_id);


--
-- Name: dcim_rearporttemplate_device_type_id_6a02fd01; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_rearporttemplate_device_type_id_6a02fd01 ON public.dcim_rearporttemplate USING btree (device_type_id);


--
-- Name: dcim_region_name_ba5a7082_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_region_name_ba5a7082_like ON public.dcim_region USING btree (name varchar_pattern_ops);


--
-- Name: dcim_region_parent_id_2486f5d4; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_region_parent_id_2486f5d4 ON public.dcim_region USING btree (parent_id);


--
-- Name: dcim_region_slug_ff078a66_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_region_slug_ff078a66_like ON public.dcim_region USING btree (slug varchar_pattern_ops);


--
-- Name: dcim_region_tree_id_a09ea9a7; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_region_tree_id_a09ea9a7 ON public.dcim_region USING btree (tree_id);


--
-- Name: dcim_site_name_8fe66c76_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_site_name_8fe66c76_like ON public.dcim_site USING btree (name varchar_pattern_ops);


--
-- Name: dcim_site_region_id_45210932; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_site_region_id_45210932 ON public.dcim_site USING btree (region_id);


--
-- Name: dcim_site_slug_4412c762_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_site_slug_4412c762_like ON public.dcim_site USING btree (slug varchar_pattern_ops);


--
-- Name: dcim_site_status_id_e6a50f56; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_site_status_id_e6a50f56 ON public.dcim_site USING btree (status_id);


--
-- Name: dcim_site_tenant_id_15e7df63; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX dcim_site_tenant_id_15e7df63 ON public.dcim_site USING btree (tenant_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: extras_configcontext_cluster_groups_clustergroup_id_f4322ce8; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_cluster_groups_clustergroup_id_f4322ce8 ON public.extras_configcontext_cluster_groups USING btree (clustergroup_id);


--
-- Name: extras_configcontext_cluster_groups_configcontext_id_8f50b794; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_cluster_groups_configcontext_id_8f50b794 ON public.extras_configcontext_cluster_groups USING btree (configcontext_id);


--
-- Name: extras_configcontext_clusters_cluster_id_6abd47a1; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_clusters_cluster_id_6abd47a1 ON public.extras_configcontext_clusters USING btree (cluster_id);


--
-- Name: extras_configcontext_clusters_configcontext_id_ed579a40; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_clusters_configcontext_id_ed579a40 ON public.extras_configcontext_clusters USING btree (configcontext_id);


--
-- Name: extras_configcontext_owner_content_type_id_af30e837; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_owner_content_type_id_af30e837 ON public.extras_configcontext USING btree (owner_content_type_id);


--
-- Name: extras_configcontext_platforms_configcontext_id_2a516699; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_platforms_configcontext_id_2a516699 ON public.extras_configcontext_platforms USING btree (configcontext_id);


--
-- Name: extras_configcontext_platforms_platform_id_3fdfedc0; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_platforms_platform_id_3fdfedc0 ON public.extras_configcontext_platforms USING btree (platform_id);


--
-- Name: extras_configcontext_regions_configcontext_id_73003dbc; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_regions_configcontext_id_73003dbc ON public.extras_configcontext_regions USING btree (configcontext_id);


--
-- Name: extras_configcontext_regions_region_id_35c6ba9d; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_regions_region_id_35c6ba9d ON public.extras_configcontext_regions USING btree (region_id);


--
-- Name: extras_configcontext_roles_configcontext_id_59b67386; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_roles_configcontext_id_59b67386 ON public.extras_configcontext_roles USING btree (configcontext_id);


--
-- Name: extras_configcontext_roles_devicerole_id_d3a84813; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_roles_devicerole_id_d3a84813 ON public.extras_configcontext_roles USING btree (devicerole_id);


--
-- Name: extras_configcontext_sites_configcontext_id_8c54feb9; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_sites_configcontext_id_8c54feb9 ON public.extras_configcontext_sites USING btree (configcontext_id);


--
-- Name: extras_configcontext_sites_site_id_cbb76c96; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_sites_site_id_cbb76c96 ON public.extras_configcontext_sites USING btree (site_id);


--
-- Name: extras_configcontext_tags_configcontext_id_64a392b1; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_tags_configcontext_id_64a392b1 ON public.extras_configcontext_tags USING btree (configcontext_id);


--
-- Name: extras_configcontext_tags_tag_id_129a5d87; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_tags_tag_id_129a5d87 ON public.extras_configcontext_tags USING btree (tag_id);


--
-- Name: extras_configcontext_tenant_groups_configcontext_id_92f68345; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_tenant_groups_configcontext_id_92f68345 ON public.extras_configcontext_tenant_groups USING btree (configcontext_id);


--
-- Name: extras_configcontext_tenant_groups_tenantgroup_id_0909688d; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_tenant_groups_tenantgroup_id_0909688d ON public.extras_configcontext_tenant_groups USING btree (tenantgroup_id);


--
-- Name: extras_configcontext_tenants_configcontext_id_b53552a6; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_tenants_configcontext_id_b53552a6 ON public.extras_configcontext_tenants USING btree (configcontext_id);


--
-- Name: extras_configcontext_tenants_tenant_id_8d0aa28e; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_configcontext_tenants_tenant_id_8d0aa28e ON public.extras_configcontext_tenants USING btree (tenant_id);


--
-- Name: extras_customfield_content_types_contenttype_id_2997ba90; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_customfield_content_types_contenttype_id_2997ba90 ON public.extras_customfield_content_types USING btree (contenttype_id);


--
-- Name: extras_customfield_content_types_customfield_id_3842aaf3; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_customfield_content_types_customfield_id_3842aaf3 ON public.extras_customfield_content_types USING btree (customfield_id);


--
-- Name: extras_customfield_name_2fe72707_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_customfield_name_2fe72707_like ON public.extras_customfield USING btree (name varchar_pattern_ops);


--
-- Name: extras_customfieldchoice_field_id_35006739; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_customfieldchoice_field_id_35006739 ON public.extras_customfieldchoice USING btree (field_id);


--
-- Name: extras_customlink_content_type_id_4d35b063; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_customlink_content_type_id_4d35b063 ON public.extras_customlink USING btree (content_type_id);


--
-- Name: extras_customlink_name_daed2d18_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_customlink_name_daed2d18_like ON public.extras_customlink USING btree (name varchar_pattern_ops);


--
-- Name: extras_exporttemplate_content_type_id_59737e21; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_exporttemplate_content_type_id_59737e21 ON public.extras_exporttemplate USING btree (content_type_id);


--
-- Name: extras_exporttemplate_owner_content_type_id_6bb67821; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_exporttemplate_owner_content_type_id_6bb67821 ON public.extras_exporttemplate USING btree (owner_content_type_id);


--
-- Name: extras_gitrepository_name_b85445c9_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_gitrepository_name_b85445c9_like ON public.extras_gitrepository USING btree (name varchar_pattern_ops);


--
-- Name: extras_gitrepository_slug_a71da0ac_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_gitrepository_slug_a71da0ac_like ON public.extras_gitrepository USING btree (slug varchar_pattern_ops);


--
-- Name: extras_imageattachment_content_type_id_90e0643d; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_imageattachment_content_type_id_90e0643d ON public.extras_imageattachment USING btree (content_type_id);


--
-- Name: extras_jobresult_obj_type_id_475e80aa; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_jobresult_obj_type_id_475e80aa ON public.extras_jobresult USING btree (obj_type_id);


--
-- Name: extras_jobresult_user_id_d35285ab; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_jobresult_user_id_d35285ab ON public.extras_jobresult USING btree (user_id);


--
-- Name: extras_objectchange_changed_object_type_id_b755bb60; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_objectchange_changed_object_type_id_b755bb60 ON public.extras_objectchange USING btree (changed_object_type_id);


--
-- Name: extras_objectchange_related_object_type_id_fe6e521f; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_objectchange_related_object_type_id_fe6e521f ON public.extras_objectchange USING btree (related_object_type_id);


--
-- Name: extras_objectchange_time_224380ea; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_objectchange_time_224380ea ON public.extras_objectchange USING btree ("time");


--
-- Name: extras_objectchange_user_id_7fdf8186; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_objectchange_user_id_7fdf8186 ON public.extras_objectchange USING btree (user_id);


--
-- Name: extras_relationship_destination_type_id_fb7387c3; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_relationship_destination_type_id_fb7387c3 ON public.extras_relationship USING btree (destination_type_id);


--
-- Name: extras_relationship_name_5f6f8ea2_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_relationship_name_5f6f8ea2_like ON public.extras_relationship USING btree (name varchar_pattern_ops);


--
-- Name: extras_relationship_slug_e09b40f4_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_relationship_slug_e09b40f4_like ON public.extras_relationship USING btree (slug varchar_pattern_ops);


--
-- Name: extras_relationship_source_type_id_21183ad6; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_relationship_source_type_id_21183ad6 ON public.extras_relationship USING btree (source_type_id);


--
-- Name: extras_relationshipassociation_destination_type_id_5ccb6728; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_relationshipassociation_destination_type_id_5ccb6728 ON public.extras_relationshipassociation USING btree (destination_type_id);


--
-- Name: extras_relationshipassociation_relationship_id_9a65ccc8; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_relationshipassociation_relationship_id_9a65ccc8 ON public.extras_relationshipassociation USING btree (relationship_id);


--
-- Name: extras_relationshipassociation_source_type_id_28c8df60; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_relationshipassociation_source_type_id_28c8df60 ON public.extras_relationshipassociation USING btree (source_type_id);


--
-- Name: extras_status_content_types_contenttype_id_38503e74; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_status_content_types_contenttype_id_38503e74 ON public.extras_status_content_types USING btree (contenttype_id);


--
-- Name: extras_status_content_types_status_id_27c665c7; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_status_content_types_status_id_27c665c7 ON public.extras_status_content_types USING btree (status_id);


--
-- Name: extras_status_name_d8897514_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_status_name_d8897514_like ON public.extras_status USING btree (name varchar_pattern_ops);


--
-- Name: extras_status_slug_6f38c09c_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_status_slug_6f38c09c_like ON public.extras_status USING btree (slug varchar_pattern_ops);


--
-- Name: extras_tag_name_9550b3d9_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_tag_name_9550b3d9_like ON public.extras_tag USING btree (name varchar_pattern_ops);


--
-- Name: extras_tag_slug_aaa5b7e9_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_tag_slug_aaa5b7e9_like ON public.extras_tag USING btree (slug varchar_pattern_ops);


--
-- Name: extras_taggeditem_content_type_id_ba5562ed; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_taggeditem_content_type_id_ba5562ed ON public.extras_taggeditem USING btree (content_type_id);


--
-- Name: extras_taggeditem_content_type_id_object_id_80e28e23_idx; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_taggeditem_content_type_id_object_id_80e28e23_idx ON public.extras_taggeditem USING btree (content_type_id, object_id);


--
-- Name: extras_taggeditem_tag_id_d48af7c7; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_taggeditem_tag_id_d48af7c7 ON public.extras_taggeditem USING btree (tag_id);


--
-- Name: extras_webhook_content_types_contenttype_id_3fc2c4d3; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_webhook_content_types_contenttype_id_3fc2c4d3 ON public.extras_webhook_content_types USING btree (contenttype_id);


--
-- Name: extras_webhook_content_types_webhook_id_0c169800; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_webhook_content_types_webhook_id_0c169800 ON public.extras_webhook_content_types USING btree (webhook_id);


--
-- Name: extras_webhook_name_82cf60b5_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX extras_webhook_name_82cf60b5_like ON public.extras_webhook USING btree (name varchar_pattern_ops);


--
-- Name: ipam_aggregate_broadcast_cff7c80e; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_aggregate_broadcast_cff7c80e ON public.ipam_aggregate USING btree (broadcast);


--
-- Name: ipam_aggregate_network_e8d5e036; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_aggregate_network_e8d5e036 ON public.ipam_aggregate USING btree (network);


--
-- Name: ipam_aggregate_prefix_length_da6bd002; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_aggregate_prefix_length_da6bd002 ON public.ipam_aggregate USING btree (prefix_length);


--
-- Name: ipam_aggregate_rir_id_ef7a27bd; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_aggregate_rir_id_ef7a27bd ON public.ipam_aggregate USING btree (rir_id);


--
-- Name: ipam_aggregate_tenant_id_637dd1a1; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_aggregate_tenant_id_637dd1a1 ON public.ipam_aggregate USING btree (tenant_id);


--
-- Name: ipam_ipaddress_assigned_object_type_id_02354370; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_ipaddress_assigned_object_type_id_02354370 ON public.ipam_ipaddress USING btree (assigned_object_type_id);


--
-- Name: ipam_ipaddress_broadcast_f3d0b760; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_ipaddress_broadcast_f3d0b760 ON public.ipam_ipaddress USING btree (broadcast);


--
-- Name: ipam_ipaddress_host_c1f8ad3e; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_ipaddress_host_c1f8ad3e ON public.ipam_ipaddress USING btree (host);


--
-- Name: ipam_ipaddress_prefix_length_f80d3663; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_ipaddress_prefix_length_f80d3663 ON public.ipam_ipaddress USING btree (prefix_length);


--
-- Name: ipam_ipaddress_status_id_942778b7; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_ipaddress_status_id_942778b7 ON public.ipam_ipaddress USING btree (status_id);


--
-- Name: ipam_ipaddress_tenant_id_ac55acfd; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_ipaddress_tenant_id_ac55acfd ON public.ipam_ipaddress USING btree (tenant_id);


--
-- Name: ipam_ipaddress_vrf_id_51fcc59b; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_ipaddress_vrf_id_51fcc59b ON public.ipam_ipaddress USING btree (vrf_id);


--
-- Name: ipam_prefix_broadcast_8e623832; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_prefix_broadcast_8e623832 ON public.ipam_prefix USING btree (broadcast);


--
-- Name: ipam_prefix_network_f7bac882; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_prefix_network_f7bac882 ON public.ipam_prefix USING btree (network);


--
-- Name: ipam_prefix_prefix_length_84660485; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_prefix_prefix_length_84660485 ON public.ipam_prefix USING btree (prefix_length);


--
-- Name: ipam_prefix_role_id_0a98d415; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_prefix_role_id_0a98d415 ON public.ipam_prefix USING btree (role_id);


--
-- Name: ipam_prefix_site_id_0b20df05; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_prefix_site_id_0b20df05 ON public.ipam_prefix USING btree (site_id);


--
-- Name: ipam_prefix_status_id_cffa56c0; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_prefix_status_id_cffa56c0 ON public.ipam_prefix USING btree (status_id);


--
-- Name: ipam_prefix_tenant_id_7ba1fcc4; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_prefix_tenant_id_7ba1fcc4 ON public.ipam_prefix USING btree (tenant_id);


--
-- Name: ipam_prefix_vlan_id_1db91bff; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_prefix_vlan_id_1db91bff ON public.ipam_prefix USING btree (vlan_id);


--
-- Name: ipam_prefix_vrf_id_34f78ed0; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_prefix_vrf_id_34f78ed0 ON public.ipam_prefix USING btree (vrf_id);


--
-- Name: ipam_rir_name_64a71982_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_rir_name_64a71982_like ON public.ipam_rir USING btree (name varchar_pattern_ops);


--
-- Name: ipam_rir_slug_ff1a369a_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_rir_slug_ff1a369a_like ON public.ipam_rir USING btree (slug varchar_pattern_ops);


--
-- Name: ipam_role_name_13784849_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_role_name_13784849_like ON public.ipam_role USING btree (name varchar_pattern_ops);


--
-- Name: ipam_role_slug_309ca14c_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_role_slug_309ca14c_like ON public.ipam_role USING btree (slug varchar_pattern_ops);


--
-- Name: ipam_routetarget_name_212be79f_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_routetarget_name_212be79f_like ON public.ipam_routetarget USING btree (name varchar_pattern_ops);


--
-- Name: ipam_routetarget_tenant_id_5a0b35e8; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_routetarget_tenant_id_5a0b35e8 ON public.ipam_routetarget USING btree (tenant_id);


--
-- Name: ipam_service_device_id_b4d2bb9c; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_service_device_id_b4d2bb9c ON public.ipam_service USING btree (device_id);


--
-- Name: ipam_service_ipaddresses_ipaddress_id_b4138c6d; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_service_ipaddresses_ipaddress_id_b4138c6d ON public.ipam_service_ipaddresses USING btree (ipaddress_id);


--
-- Name: ipam_service_ipaddresses_service_id_ae26b9ab; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_service_ipaddresses_service_id_ae26b9ab ON public.ipam_service_ipaddresses USING btree (service_id);


--
-- Name: ipam_service_virtual_machine_id_e8b53562; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_service_virtual_machine_id_e8b53562 ON public.ipam_service USING btree (virtual_machine_id);


--
-- Name: ipam_vlan_group_id_88cbfa62; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_vlan_group_id_88cbfa62 ON public.ipam_vlan USING btree (group_id);


--
-- Name: ipam_vlan_role_id_f5015962; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_vlan_role_id_f5015962 ON public.ipam_vlan USING btree (role_id);


--
-- Name: ipam_vlan_site_id_a59334e3; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_vlan_site_id_a59334e3 ON public.ipam_vlan USING btree (site_id);


--
-- Name: ipam_vlan_status_id_898aa317; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_vlan_status_id_898aa317 ON public.ipam_vlan USING btree (status_id);


--
-- Name: ipam_vlan_tenant_id_71a8290d; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_vlan_tenant_id_71a8290d ON public.ipam_vlan USING btree (tenant_id);


--
-- Name: ipam_vlangroup_site_id_264f36f6; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_vlangroup_site_id_264f36f6 ON public.ipam_vlangroup USING btree (site_id);


--
-- Name: ipam_vlangroup_slug_40abcf6b; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_vlangroup_slug_40abcf6b ON public.ipam_vlangroup USING btree (slug);


--
-- Name: ipam_vlangroup_slug_40abcf6b_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_vlangroup_slug_40abcf6b_like ON public.ipam_vlangroup USING btree (slug varchar_pattern_ops);


--
-- Name: ipam_vrf_export_targets_routetarget_id_8d9319f7; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_vrf_export_targets_routetarget_id_8d9319f7 ON public.ipam_vrf_export_targets USING btree (routetarget_id);


--
-- Name: ipam_vrf_export_targets_vrf_id_6f4875c4; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_vrf_export_targets_vrf_id_6f4875c4 ON public.ipam_vrf_export_targets USING btree (vrf_id);


--
-- Name: ipam_vrf_import_targets_routetarget_id_0e05b144; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_vrf_import_targets_routetarget_id_0e05b144 ON public.ipam_vrf_import_targets USING btree (routetarget_id);


--
-- Name: ipam_vrf_import_targets_vrf_id_ed491b19; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_vrf_import_targets_vrf_id_ed491b19 ON public.ipam_vrf_import_targets USING btree (vrf_id);


--
-- Name: ipam_vrf_rd_0ac1bde1_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_vrf_rd_0ac1bde1_like ON public.ipam_vrf USING btree (rd varchar_pattern_ops);


--
-- Name: ipam_vrf_tenant_id_498b0051; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX ipam_vrf_tenant_id_498b0051 ON public.ipam_vrf USING btree (tenant_id);


--
-- Name: nautobot_device_onboarding_created_device_id_3b7527bb; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX nautobot_device_onboarding_created_device_id_3b7527bb ON public.nautobot_device_onboarding_onboardingtask USING btree (created_device_id);


--
-- Name: nautobot_device_onboarding_onboardingtask_platform_id_29f56ca5; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX nautobot_device_onboarding_onboardingtask_platform_id_29f56ca5 ON public.nautobot_device_onboarding_onboardingtask USING btree (platform_id);


--
-- Name: nautobot_device_onboarding_onboardingtask_role_id_c4405036; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX nautobot_device_onboarding_onboardingtask_role_id_c4405036 ON public.nautobot_device_onboarding_onboardingtask USING btree (role_id);


--
-- Name: nautobot_device_onboarding_onboardingtask_site_id_5089f3c0; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX nautobot_device_onboarding_onboardingtask_site_id_5089f3c0 ON public.nautobot_device_onboarding_onboardingtask USING btree (site_id);


--
-- Name: social_auth_code_code_a2393167; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX social_auth_code_code_a2393167 ON public.social_auth_code USING btree (code);


--
-- Name: social_auth_code_code_a2393167_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX social_auth_code_code_a2393167_like ON public.social_auth_code USING btree (code varchar_pattern_ops);


--
-- Name: social_auth_code_timestamp_176b341f; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX social_auth_code_timestamp_176b341f ON public.social_auth_code USING btree ("timestamp");


--
-- Name: social_auth_partial_timestamp_50f2119f; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX social_auth_partial_timestamp_50f2119f ON public.social_auth_partial USING btree ("timestamp");


--
-- Name: social_auth_partial_token_3017fea3; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX social_auth_partial_token_3017fea3 ON public.social_auth_partial USING btree (token);


--
-- Name: social_auth_partial_token_3017fea3_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX social_auth_partial_token_3017fea3_like ON public.social_auth_partial USING btree (token varchar_pattern_ops);


--
-- Name: social_auth_usersocialauth_uid_796e51dc; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX social_auth_usersocialauth_uid_796e51dc ON public.social_auth_usersocialauth USING btree (uid);


--
-- Name: social_auth_usersocialauth_uid_796e51dc_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX social_auth_usersocialauth_uid_796e51dc_like ON public.social_auth_usersocialauth USING btree (uid varchar_pattern_ops);


--
-- Name: social_auth_usersocialauth_user_id_17d28448; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX social_auth_usersocialauth_user_id_17d28448 ON public.social_auth_usersocialauth USING btree (user_id);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- Name: tenancy_tenant_group_id_7daef6f4; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX tenancy_tenant_group_id_7daef6f4 ON public.tenancy_tenant USING btree (group_id);


--
-- Name: tenancy_tenant_name_f6e5b2f5_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX tenancy_tenant_name_f6e5b2f5_like ON public.tenancy_tenant USING btree (name varchar_pattern_ops);


--
-- Name: tenancy_tenant_slug_0716575e_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX tenancy_tenant_slug_0716575e_like ON public.tenancy_tenant USING btree (slug varchar_pattern_ops);


--
-- Name: tenancy_tenantgroup_name_53363199_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX tenancy_tenantgroup_name_53363199_like ON public.tenancy_tenantgroup USING btree (name varchar_pattern_ops);


--
-- Name: tenancy_tenantgroup_parent_id_2542fc18; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX tenancy_tenantgroup_parent_id_2542fc18 ON public.tenancy_tenantgroup USING btree (parent_id);


--
-- Name: tenancy_tenantgroup_slug_e2af1cb6_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX tenancy_tenantgroup_slug_e2af1cb6_like ON public.tenancy_tenantgroup USING btree (slug varchar_pattern_ops);


--
-- Name: tenancy_tenantgroup_tree_id_769a98bf; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX tenancy_tenantgroup_tree_id_769a98bf ON public.tenancy_tenantgroup USING btree (tree_id);


--
-- Name: users_objectpermission_groups_group_id_fb7ba6e0; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX users_objectpermission_groups_group_id_fb7ba6e0 ON public.users_objectpermission_groups USING btree (group_id);


--
-- Name: users_objectpermission_groups_objectpermission_id_2f7cc117; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX users_objectpermission_groups_objectpermission_id_2f7cc117 ON public.users_objectpermission_groups USING btree (objectpermission_id);


--
-- Name: users_objectpermission_obj_objectpermission_id_38c7d8f5; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX users_objectpermission_obj_objectpermission_id_38c7d8f5 ON public.users_objectpermission_object_types USING btree (objectpermission_id);


--
-- Name: users_objectpermission_object_types_contenttype_id_594b1cc7; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX users_objectpermission_object_types_contenttype_id_594b1cc7 ON public.users_objectpermission_object_types USING btree (contenttype_id);


--
-- Name: users_objectpermission_users_objectpermission_id_78a9c2e6; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX users_objectpermission_users_objectpermission_id_78a9c2e6 ON public.users_objectpermission_users USING btree (objectpermission_id);


--
-- Name: users_objectpermission_users_user_id_16c0905d; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX users_objectpermission_users_user_id_16c0905d ON public.users_objectpermission_users USING btree (user_id);


--
-- Name: users_token_key_820deccd_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX users_token_key_820deccd_like ON public.users_token USING btree (key varchar_pattern_ops);


--
-- Name: users_token_user_id_af964690; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX users_token_user_id_af964690 ON public.users_token USING btree (user_id);


--
-- Name: virtualization_cluster_group_id_de379828; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_cluster_group_id_de379828 ON public.virtualization_cluster USING btree (group_id);


--
-- Name: virtualization_cluster_name_1b59a61b_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_cluster_name_1b59a61b_like ON public.virtualization_cluster USING btree (name varchar_pattern_ops);


--
-- Name: virtualization_cluster_site_id_4d5af282; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_cluster_site_id_4d5af282 ON public.virtualization_cluster USING btree (site_id);


--
-- Name: virtualization_cluster_tenant_id_bc2868d0; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_cluster_tenant_id_bc2868d0 ON public.virtualization_cluster USING btree (tenant_id);


--
-- Name: virtualization_cluster_type_id_4efafb0a; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_cluster_type_id_4efafb0a ON public.virtualization_cluster USING btree (type_id);


--
-- Name: virtualization_clustergroup_name_4fcd26b4_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_clustergroup_name_4fcd26b4_like ON public.virtualization_clustergroup USING btree (name varchar_pattern_ops);


--
-- Name: virtualization_clustergroup_slug_57ca1d23_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_clustergroup_slug_57ca1d23_like ON public.virtualization_clustergroup USING btree (slug varchar_pattern_ops);


--
-- Name: virtualization_clustertype_name_ea854d3d_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_clustertype_name_ea854d3d_like ON public.virtualization_clustertype USING btree (name varchar_pattern_ops);


--
-- Name: virtualization_clustertype_slug_8ee4d0e0_like; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_clustertype_slug_8ee4d0e0_like ON public.virtualization_clustertype USING btree (slug varchar_pattern_ops);


--
-- Name: virtualization_virtualmach_local_context_data_owner_c_f760366b; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_virtualmach_local_context_data_owner_c_f760366b ON public.virtualization_virtualmachine USING btree (local_context_data_owner_content_type_id);


--
-- Name: virtualization_virtualmachine_cluster_id_6c9f9047; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_virtualmachine_cluster_id_6c9f9047 ON public.virtualization_virtualmachine USING btree (cluster_id);


--
-- Name: virtualization_virtualmachine_platform_id_a6c5ccb2; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_virtualmachine_platform_id_a6c5ccb2 ON public.virtualization_virtualmachine USING btree (platform_id);


--
-- Name: virtualization_virtualmachine_role_id_0cc898f9; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_virtualmachine_role_id_0cc898f9 ON public.virtualization_virtualmachine USING btree (role_id);


--
-- Name: virtualization_virtualmachine_status_id_ff17be20; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_virtualmachine_status_id_ff17be20 ON public.virtualization_virtualmachine USING btree (status_id);


--
-- Name: virtualization_virtualmachine_tenant_id_d00d1d77; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_virtualmachine_tenant_id_d00d1d77 ON public.virtualization_virtualmachine USING btree (tenant_id);


--
-- Name: virtualization_vminterface_tagged_vlans_vlan_id_4e77411e; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_vminterface_tagged_vlans_vlan_id_4e77411e ON public.virtualization_vminterface_tagged_vlans USING btree (vlan_id);


--
-- Name: virtualization_vminterface_tagged_vlans_vminterface_id_904b12de; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_vminterface_tagged_vlans_vminterface_id_904b12de ON public.virtualization_vminterface_tagged_vlans USING btree (vminterface_id);


--
-- Name: virtualization_vminterface_untagged_vlan_id_aea4fc69; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_vminterface_untagged_vlan_id_aea4fc69 ON public.virtualization_vminterface USING btree (untagged_vlan_id);


--
-- Name: virtualization_vminterface_virtual_machine_id_e9f89829; Type: INDEX; Schema: public; Owner: nautobot
--

CREATE INDEX virtualization_vminterface_virtual_machine_id_e9f89829 ON public.virtualization_vminterface USING btree (virtual_machine_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: circuits_circuit circuits_circuit_provider_id_d9195418_fk_circuits_provider_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_circuit
    ADD CONSTRAINT circuits_circuit_provider_id_d9195418_fk_circuits_provider_id FOREIGN KEY (provider_id) REFERENCES public.circuits_provider(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: circuits_circuit circuits_circuit_status_id_6433793f_fk_extras_status_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_circuit
    ADD CONSTRAINT circuits_circuit_status_id_6433793f_fk_extras_status_id FOREIGN KEY (status_id) REFERENCES public.extras_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: circuits_circuit circuits_circuit_tenant_id_812508a5_fk_tenancy_tenant_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_circuit
    ADD CONSTRAINT circuits_circuit_tenant_id_812508a5_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: circuits_circuit circuits_circuit_type_id_1b9f485a_fk_circuits_circuittype_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_circuit
    ADD CONSTRAINT circuits_circuit_type_id_1b9f485a_fk_circuits_circuittype_id FOREIGN KEY (type_id) REFERENCES public.circuits_circuittype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: circuits_circuittermination circuits_circuitterm__cable_peer_type_id_bd122156_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuitterm__cable_peer_type_id_bd122156_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: circuits_circuittermination circuits_circuitterm__path_id_6dfd8db0_fk_dcim_cabl; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuitterm__path_id_6dfd8db0_fk_dcim_cabl FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: circuits_circuittermination circuits_circuitterm_circuit_id_257e87e7_fk_circuits_; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuitterm_circuit_id_257e87e7_fk_circuits_ FOREIGN KEY (circuit_id) REFERENCES public.circuits_circuit(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: circuits_circuittermination circuits_circuittermination_cable_id_35e9f703_fk_dcim_cable_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuittermination_cable_id_35e9f703_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: circuits_circuittermination circuits_circuittermination_site_id_e6fe5652_fk_dcim_site_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.circuits_circuittermination
    ADD CONSTRAINT circuits_circuittermination_site_id_e6fe5652_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_cable dcim_cable__termination_a_device_id_e59cde1c_fk_dcim_device_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable__termination_a_device_id_e59cde1c_fk_dcim_device_id FOREIGN KEY (_termination_a_device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_cable dcim_cable__termination_b_device_id_a9073762_fk_dcim_device_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable__termination_b_device_id_a9073762_fk_dcim_device_id FOREIGN KEY (_termination_b_device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_cable dcim_cable_status_id_6a580869_fk_extras_status_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable_status_id_6a580869_fk_extras_status_id FOREIGN KEY (status_id) REFERENCES public.extras_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_cable dcim_cable_termination_a_type_i_a614bab8_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable_termination_a_type_i_a614bab8_fk_django_co FOREIGN KEY (termination_a_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_cable dcim_cable_termination_b_type_i_a91595d0_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_cable
    ADD CONSTRAINT dcim_cable_termination_b_type_i_a91595d0_fk_django_co FOREIGN KEY (termination_b_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_cablepath dcim_cablepath_destination_type_id_a8c1654b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_cablepath
    ADD CONSTRAINT dcim_cablepath_destination_type_id_a8c1654b_fk_django_co FOREIGN KEY (destination_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_cablepath dcim_cablepath_origin_type_id_6de54f6d_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_cablepath
    ADD CONSTRAINT dcim_cablepath_origin_type_id_6de54f6d_fk_django_co FOREIGN KEY (origin_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_consoleport dcim_consoleport__cable_peer_type_id_52adb1be_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_consoleport
    ADD CONSTRAINT dcim_consoleport__cable_peer_type_id_52adb1be_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_consoleport dcim_consoleport__path_id_e40a4436_fk_dcim_cablepath_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_consoleport
    ADD CONSTRAINT dcim_consoleport__path_id_e40a4436_fk_dcim_cablepath_id FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_consoleport dcim_consoleport_cable_id_a9ae5465_fk_dcim_cable_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_consoleport
    ADD CONSTRAINT dcim_consoleport_cable_id_a9ae5465_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_consoleport dcim_consoleport_device_id_f2d90d3c_fk_dcim_device_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_consoleport
    ADD CONSTRAINT dcim_consoleport_device_id_f2d90d3c_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_consoleporttemplate dcim_consoleporttemp_device_type_id_075d4015_fk_dcim_devi; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_consoleporttemplate
    ADD CONSTRAINT dcim_consoleporttemp_device_type_id_075d4015_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_consoleserverport dcim_consoleserverpo__cable_peer_type_id_132b6744_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_consoleserverport
    ADD CONSTRAINT dcim_consoleserverpo__cable_peer_type_id_132b6744_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_consoleserverporttemplate dcim_consoleserverpo_device_type_id_579bdc86_fk_dcim_devi; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_consoleserverporttemplate
    ADD CONSTRAINT dcim_consoleserverpo_device_type_id_579bdc86_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_consoleserverport dcim_consoleserverport__path_id_dc5abe09_fk_dcim_cablepath_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_consoleserverport
    ADD CONSTRAINT dcim_consoleserverport__path_id_dc5abe09_fk_dcim_cablepath_id FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_consoleserverport dcim_consoleserverport_cable_id_f2940dfd_fk_dcim_cable_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_consoleserverport
    ADD CONSTRAINT dcim_consoleserverport_cable_id_f2940dfd_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_consoleserverport dcim_consoleserverport_device_id_d9866581_fk_dcim_device_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_consoleserverport
    ADD CONSTRAINT dcim_consoleserverport_device_id_d9866581_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_device dcim_device_cluster_id_cf852f78_fk_virtualization_cluster_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_cluster_id_cf852f78_fk_virtualization_cluster_id FOREIGN KEY (cluster_id) REFERENCES public.virtualization_cluster(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_device dcim_device_device_role_id_682e8188_fk_dcim_devicerole_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_device_role_id_682e8188_fk_dcim_devicerole_id FOREIGN KEY (device_role_id) REFERENCES public.dcim_devicerole(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_device dcim_device_device_type_id_d61b4086_fk_dcim_devicetype_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_device_type_id_d61b4086_fk_dcim_devicetype_id FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_device dcim_device_local_context_data_o_5d06013b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_local_context_data_o_5d06013b_fk_django_co FOREIGN KEY (local_context_data_owner_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_device dcim_device_platform_id_468138f1_fk_dcim_platform_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_platform_id_468138f1_fk_dcim_platform_id FOREIGN KEY (platform_id) REFERENCES public.dcim_platform(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_device dcim_device_primary_ip4_id_2ccd943a_fk_ipam_ipaddress_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_primary_ip4_id_2ccd943a_fk_ipam_ipaddress_id FOREIGN KEY (primary_ip4_id) REFERENCES public.ipam_ipaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_device dcim_device_primary_ip6_id_d180fe91_fk_ipam_ipaddress_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_primary_ip6_id_d180fe91_fk_ipam_ipaddress_id FOREIGN KEY (primary_ip6_id) REFERENCES public.ipam_ipaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_device dcim_device_rack_id_23bde71f_fk_dcim_rack_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_rack_id_23bde71f_fk_dcim_rack_id FOREIGN KEY (rack_id) REFERENCES public.dcim_rack(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_device dcim_device_site_id_ff897cf6_fk_dcim_site_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_site_id_ff897cf6_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_device dcim_device_status_id_96d2fc6f_fk_extras_status_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_status_id_96d2fc6f_fk_extras_status_id FOREIGN KEY (status_id) REFERENCES public.extras_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_device dcim_device_tenant_id_dcea7969_fk_tenancy_tenant_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_tenant_id_dcea7969_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_device dcim_device_virtual_chassis_id_aed51693_fk_dcim_virt; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_device
    ADD CONSTRAINT dcim_device_virtual_chassis_id_aed51693_fk_dcim_virt FOREIGN KEY (virtual_chassis_id) REFERENCES public.dcim_virtualchassis(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_devicebay dcim_devicebay_device_id_0c8a1218_fk_dcim_device_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_devicebay
    ADD CONSTRAINT dcim_devicebay_device_id_0c8a1218_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_devicebay dcim_devicebay_installed_device_id_04618112_fk_dcim_device_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_devicebay
    ADD CONSTRAINT dcim_devicebay_installed_device_id_04618112_fk_dcim_device_id FOREIGN KEY (installed_device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_devicebaytemplate dcim_devicebaytempla_device_type_id_f4b24a29_fk_dcim_devi; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_devicebaytemplate
    ADD CONSTRAINT dcim_devicebaytempla_device_type_id_f4b24a29_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_devicetype dcim_devicetype_manufacturer_id_a3e8029e_fk_dcim_manu; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_devicetype
    ADD CONSTRAINT dcim_devicetype_manufacturer_id_a3e8029e_fk_dcim_manu FOREIGN KEY (manufacturer_id) REFERENCES public.dcim_manufacturer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_frontport dcim_frontport__cable_peer_type_id_c4690f56_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport__cable_peer_type_id_c4690f56_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_frontport dcim_frontport_cable_id_04ff8aab_fk_dcim_cable_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport_cable_id_04ff8aab_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_frontport dcim_frontport_device_id_950557b5_fk_dcim_device_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport_device_id_950557b5_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_frontport dcim_frontport_rear_port_id_78df2532_fk_dcim_rearport_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_frontport
    ADD CONSTRAINT dcim_frontport_rear_port_id_78df2532_fk_dcim_rearport_id FOREIGN KEY (rear_port_id) REFERENCES public.dcim_rearport(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_frontporttemplate dcim_frontporttempla_device_type_id_f088b952_fk_dcim_devi; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_frontporttemplate
    ADD CONSTRAINT dcim_frontporttempla_device_type_id_f088b952_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_frontporttemplate dcim_frontporttempla_rear_port_id_9775411b_fk_dcim_rear; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_frontporttemplate
    ADD CONSTRAINT dcim_frontporttempla_rear_port_id_9775411b_fk_dcim_rear FOREIGN KEY (rear_port_id) REFERENCES public.dcim_rearporttemplate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_interface dcim_interface__cable_peer_type_id_ce52cb81_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface__cable_peer_type_id_ce52cb81_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_interface dcim_interface__path_id_f8f4f7f0_fk_dcim_cablepath_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface__path_id_f8f4f7f0_fk_dcim_cablepath_id FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_interface dcim_interface_cable_id_1b264edb_fk_dcim_cable_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface_cable_id_1b264edb_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_interface dcim_interface_device_id_359c6115_fk_dcim_device_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface_device_id_359c6115_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_interface dcim_interface_lag_id_ea1a1d12_fk_dcim_interface_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface_lag_id_ea1a1d12_fk_dcim_interface_id FOREIGN KEY (lag_id) REFERENCES public.dcim_interface(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_interface_tagged_vlans dcim_interface_tagge_interface_id_5870c9e9_fk_dcim_inte; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_interface_tagged_vlans
    ADD CONSTRAINT dcim_interface_tagge_interface_id_5870c9e9_fk_dcim_inte FOREIGN KEY (interface_id) REFERENCES public.dcim_interface(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_interface_tagged_vlans dcim_interface_tagged_vlans_vlan_id_e027005c_fk_ipam_vlan_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_interface_tagged_vlans
    ADD CONSTRAINT dcim_interface_tagged_vlans_vlan_id_e027005c_fk_ipam_vlan_id FOREIGN KEY (vlan_id) REFERENCES public.ipam_vlan(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_interface dcim_interface_untagged_vlan_id_838dc7be_fk_ipam_vlan_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_interface
    ADD CONSTRAINT dcim_interface_untagged_vlan_id_838dc7be_fk_ipam_vlan_id FOREIGN KEY (untagged_vlan_id) REFERENCES public.ipam_vlan(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_interfacetemplate dcim_interfacetempla_device_type_id_4bfcbfab_fk_dcim_devi; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_interfacetemplate
    ADD CONSTRAINT dcim_interfacetempla_device_type_id_4bfcbfab_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_inventoryitem dcim_inventoryitem_device_id_033d83f8_fk_dcim_device_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_inventoryitem
    ADD CONSTRAINT dcim_inventoryitem_device_id_033d83f8_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_inventoryitem dcim_inventoryitem_manufacturer_id_dcd1b78a_fk_dcim_manu; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_inventoryitem
    ADD CONSTRAINT dcim_inventoryitem_manufacturer_id_dcd1b78a_fk_dcim_manu FOREIGN KEY (manufacturer_id) REFERENCES public.dcim_manufacturer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_inventoryitem dcim_inventoryitem_parent_id_7ebcd457_fk_dcim_inventoryitem_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_inventoryitem
    ADD CONSTRAINT dcim_inventoryitem_parent_id_7ebcd457_fk_dcim_inventoryitem_id FOREIGN KEY (parent_id) REFERENCES public.dcim_inventoryitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_platform dcim_platform_manufacturer_id_83f72d3d_fk_dcim_manufacturer_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_platform
    ADD CONSTRAINT dcim_platform_manufacturer_id_83f72d3d_fk_dcim_manufacturer_id FOREIGN KEY (manufacturer_id) REFERENCES public.dcim_manufacturer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_powerfeed dcim_powerfeed__cable_peer_type_id_9f930589_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed__cable_peer_type_id_9f930589_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_powerfeed dcim_powerfeed__path_id_a1ea1f28_fk_dcim_cablepath_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed__path_id_a1ea1f28_fk_dcim_cablepath_id FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_powerfeed dcim_powerfeed_cable_id_ec44c4f8_fk_dcim_cable_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed_cable_id_ec44c4f8_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_powerfeed dcim_powerfeed_power_panel_id_32bde3be_fk_dcim_powerpanel_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed_power_panel_id_32bde3be_fk_dcim_powerpanel_id FOREIGN KEY (power_panel_id) REFERENCES public.dcim_powerpanel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_powerfeed dcim_powerfeed_rack_id_7abba090_fk_dcim_rack_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed_rack_id_7abba090_fk_dcim_rack_id FOREIGN KEY (rack_id) REFERENCES public.dcim_rack(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_powerfeed dcim_powerfeed_status_id_8c424cc3_fk_extras_status_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerfeed
    ADD CONSTRAINT dcim_powerfeed_status_id_8c424cc3_fk_extras_status_id FOREIGN KEY (status_id) REFERENCES public.extras_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_poweroutlet dcim_poweroutlet__cable_peer_type_id_bbff28d0_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet__cable_peer_type_id_bbff28d0_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_poweroutlet dcim_poweroutlet__path_id_cbb47bb9_fk_dcim_cablepath_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet__path_id_cbb47bb9_fk_dcim_cablepath_id FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_poweroutlet dcim_poweroutlet_cable_id_8dbea1ec_fk_dcim_cable_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet_cable_id_8dbea1ec_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_poweroutlet dcim_poweroutlet_device_id_286351d7_fk_dcim_device_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet_device_id_286351d7_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_poweroutlet dcim_poweroutlet_power_port_id_9bdf4163_fk_dcim_powerport_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_poweroutlet
    ADD CONSTRAINT dcim_poweroutlet_power_port_id_9bdf4163_fk_dcim_powerport_id FOREIGN KEY (power_port_id) REFERENCES public.dcim_powerport(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_poweroutlettemplate dcim_poweroutlettemp_device_type_id_26b2316c_fk_dcim_devi; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_poweroutlettemplate
    ADD CONSTRAINT dcim_poweroutlettemp_device_type_id_26b2316c_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_poweroutlettemplate dcim_poweroutlettemp_power_port_id_c0fb0c42_fk_dcim_powe; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_poweroutlettemplate
    ADD CONSTRAINT dcim_poweroutlettemp_power_port_id_c0fb0c42_fk_dcim_powe FOREIGN KEY (power_port_id) REFERENCES public.dcim_powerporttemplate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_powerpanel dcim_powerpanel_rack_group_id_76467cc9_fk_dcim_rackgroup_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerpanel
    ADD CONSTRAINT dcim_powerpanel_rack_group_id_76467cc9_fk_dcim_rackgroup_id FOREIGN KEY (rack_group_id) REFERENCES public.dcim_rackgroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_powerpanel dcim_powerpanel_site_id_c430bc89_fk_dcim_site_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerpanel
    ADD CONSTRAINT dcim_powerpanel_site_id_c430bc89_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_powerport dcim_powerport__cable_peer_type_id_9df2a278_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerport
    ADD CONSTRAINT dcim_powerport__cable_peer_type_id_9df2a278_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_powerport dcim_powerport__path_id_9fe4af8f_fk_dcim_cablepath_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerport
    ADD CONSTRAINT dcim_powerport__path_id_9fe4af8f_fk_dcim_cablepath_id FOREIGN KEY (_path_id) REFERENCES public.dcim_cablepath(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_powerport dcim_powerport_cable_id_c9682ba2_fk_dcim_cable_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerport
    ADD CONSTRAINT dcim_powerport_cable_id_c9682ba2_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_powerport dcim_powerport_device_id_ef7185ae_fk_dcim_device_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerport
    ADD CONSTRAINT dcim_powerport_device_id_ef7185ae_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_powerporttemplate dcim_powerporttempla_device_type_id_1ddfbfcc_fk_dcim_devi; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_powerporttemplate
    ADD CONSTRAINT dcim_powerporttempla_device_type_id_1ddfbfcc_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_rack dcim_rack_group_id_44e90ea9_fk_dcim_rackgroup_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_group_id_44e90ea9_fk_dcim_rackgroup_id FOREIGN KEY (group_id) REFERENCES public.dcim_rackgroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_rack dcim_rack_role_id_62d6919e_fk_dcim_rackrole_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_role_id_62d6919e_fk_dcim_rackrole_id FOREIGN KEY (role_id) REFERENCES public.dcim_rackrole(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_rack dcim_rack_site_id_403c7b3a_fk_dcim_site_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_site_id_403c7b3a_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_rack dcim_rack_status_id_ee3dee3e_fk_extras_status_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_status_id_ee3dee3e_fk_extras_status_id FOREIGN KEY (status_id) REFERENCES public.extras_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_rack dcim_rack_tenant_id_7cdf3725_fk_tenancy_tenant_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rack
    ADD CONSTRAINT dcim_rack_tenant_id_7cdf3725_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_rackgroup dcim_rackgroup_parent_id_cc315105_fk_dcim_rackgroup_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rackgroup
    ADD CONSTRAINT dcim_rackgroup_parent_id_cc315105_fk_dcim_rackgroup_id FOREIGN KEY (parent_id) REFERENCES public.dcim_rackgroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_rackgroup dcim_rackgroup_site_id_13520e89_fk_dcim_site_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rackgroup
    ADD CONSTRAINT dcim_rackgroup_site_id_13520e89_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_rackreservation dcim_rackreservation_rack_id_1ebbaa9b_fk_dcim_rack_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rackreservation
    ADD CONSTRAINT dcim_rackreservation_rack_id_1ebbaa9b_fk_dcim_rack_id FOREIGN KEY (rack_id) REFERENCES public.dcim_rack(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_rackreservation dcim_rackreservation_tenant_id_eb5e045f_fk_tenancy_tenant_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rackreservation
    ADD CONSTRAINT dcim_rackreservation_tenant_id_eb5e045f_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_rackreservation dcim_rackreservation_user_id_0785a527_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rackreservation
    ADD CONSTRAINT dcim_rackreservation_user_id_0785a527_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_rearport dcim_rearport__cable_peer_type_id_cecf241c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rearport
    ADD CONSTRAINT dcim_rearport__cable_peer_type_id_cecf241c_fk_django_co FOREIGN KEY (_cable_peer_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_rearport dcim_rearport_cable_id_42c0e4e7_fk_dcim_cable_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rearport
    ADD CONSTRAINT dcim_rearport_cable_id_42c0e4e7_fk_dcim_cable_id FOREIGN KEY (cable_id) REFERENCES public.dcim_cable(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_rearport dcim_rearport_device_id_0bdfe9c0_fk_dcim_device_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rearport
    ADD CONSTRAINT dcim_rearport_device_id_0bdfe9c0_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_rearporttemplate dcim_rearporttemplat_device_type_id_6a02fd01_fk_dcim_devi; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_rearporttemplate
    ADD CONSTRAINT dcim_rearporttemplat_device_type_id_6a02fd01_fk_dcim_devi FOREIGN KEY (device_type_id) REFERENCES public.dcim_devicetype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_region dcim_region_parent_id_2486f5d4_fk_dcim_region_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_region
    ADD CONSTRAINT dcim_region_parent_id_2486f5d4_fk_dcim_region_id FOREIGN KEY (parent_id) REFERENCES public.dcim_region(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_site dcim_site_region_id_45210932_fk_dcim_region_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_site
    ADD CONSTRAINT dcim_site_region_id_45210932_fk_dcim_region_id FOREIGN KEY (region_id) REFERENCES public.dcim_region(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_site dcim_site_status_id_e6a50f56_fk_extras_status_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_site
    ADD CONSTRAINT dcim_site_status_id_e6a50f56_fk_extras_status_id FOREIGN KEY (status_id) REFERENCES public.extras_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_site dcim_site_tenant_id_15e7df63_fk_tenancy_tenant_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_site
    ADD CONSTRAINT dcim_site_tenant_id_15e7df63_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dcim_virtualchassis dcim_virtualchassis_master_id_ab54cfc6_fk_dcim_device_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.dcim_virtualchassis
    ADD CONSTRAINT dcim_virtualchassis_master_id_ab54cfc6_fk_dcim_device_id FOREIGN KEY (master_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext_clusters extras_configcontext_cluster_id_6abd47a1_fk_virtualiz; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_clusters
    ADD CONSTRAINT extras_configcontext_cluster_id_6abd47a1_fk_virtualiz FOREIGN KEY (cluster_id) REFERENCES public.virtualization_cluster(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext_cluster_groups extras_configcontext_clustergroup_id_f4322ce8_fk_virtualiz; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_cluster_groups
    ADD CONSTRAINT extras_configcontext_clustergroup_id_f4322ce8_fk_virtualiz FOREIGN KEY (clustergroup_id) REFERENCES public.virtualization_clustergroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext_platforms extras_configcontext_configcontext_id_2a516699_fk_extras_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_platforms
    ADD CONSTRAINT extras_configcontext_configcontext_id_2a516699_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext_roles extras_configcontext_configcontext_id_59b67386_fk_extras_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_roles
    ADD CONSTRAINT extras_configcontext_configcontext_id_59b67386_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext_tags extras_configcontext_configcontext_id_64a392b1_fk_extras_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_tags
    ADD CONSTRAINT extras_configcontext_configcontext_id_64a392b1_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext_regions extras_configcontext_configcontext_id_73003dbc_fk_extras_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_regions
    ADD CONSTRAINT extras_configcontext_configcontext_id_73003dbc_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext_sites extras_configcontext_configcontext_id_8c54feb9_fk_extras_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_sites
    ADD CONSTRAINT extras_configcontext_configcontext_id_8c54feb9_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext_cluster_groups extras_configcontext_configcontext_id_8f50b794_fk_extras_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_cluster_groups
    ADD CONSTRAINT extras_configcontext_configcontext_id_8f50b794_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext_tenant_groups extras_configcontext_configcontext_id_92f68345_fk_extras_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_tenant_groups
    ADD CONSTRAINT extras_configcontext_configcontext_id_92f68345_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext_tenants extras_configcontext_configcontext_id_b53552a6_fk_extras_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_tenants
    ADD CONSTRAINT extras_configcontext_configcontext_id_b53552a6_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext_clusters extras_configcontext_configcontext_id_ed579a40_fk_extras_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_clusters
    ADD CONSTRAINT extras_configcontext_configcontext_id_ed579a40_fk_extras_co FOREIGN KEY (configcontext_id) REFERENCES public.extras_configcontext(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext_roles extras_configcontext_devicerole_id_d3a84813_fk_dcim_devi; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_roles
    ADD CONSTRAINT extras_configcontext_devicerole_id_d3a84813_fk_dcim_devi FOREIGN KEY (devicerole_id) REFERENCES public.dcim_devicerole(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext extras_configcontext_owner_content_type_i_af30e837_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext
    ADD CONSTRAINT extras_configcontext_owner_content_type_i_af30e837_fk_django_co FOREIGN KEY (owner_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext_platforms extras_configcontext_platform_id_3fdfedc0_fk_dcim_plat; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_platforms
    ADD CONSTRAINT extras_configcontext_platform_id_3fdfedc0_fk_dcim_plat FOREIGN KEY (platform_id) REFERENCES public.dcim_platform(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext_regions extras_configcontext_region_id_35c6ba9d_fk_dcim_regi; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_regions
    ADD CONSTRAINT extras_configcontext_region_id_35c6ba9d_fk_dcim_regi FOREIGN KEY (region_id) REFERENCES public.dcim_region(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext_sites extras_configcontext_sites_site_id_cbb76c96_fk_dcim_site_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_sites
    ADD CONSTRAINT extras_configcontext_sites_site_id_cbb76c96_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext_tags extras_configcontext_tags_tag_id_129a5d87_fk_extras_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_tags
    ADD CONSTRAINT extras_configcontext_tags_tag_id_129a5d87_fk_extras_tag_id FOREIGN KEY (tag_id) REFERENCES public.extras_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext_tenants extras_configcontext_tenant_id_8d0aa28e_fk_tenancy_t; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_tenants
    ADD CONSTRAINT extras_configcontext_tenant_id_8d0aa28e_fk_tenancy_t FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_configcontext_tenant_groups extras_configcontext_tenantgroup_id_0909688d_fk_tenancy_t; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_configcontext_tenant_groups
    ADD CONSTRAINT extras_configcontext_tenantgroup_id_0909688d_fk_tenancy_t FOREIGN KEY (tenantgroup_id) REFERENCES public.tenancy_tenantgroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_customfield_content_types extras_customfield_c_contenttype_id_2997ba90_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_customfield_content_types
    ADD CONSTRAINT extras_customfield_c_contenttype_id_2997ba90_fk_django_co FOREIGN KEY (contenttype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_customfield_content_types extras_customfield_c_customfield_id_3842aaf3_fk_extras_cu; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_customfield_content_types
    ADD CONSTRAINT extras_customfield_c_customfield_id_3842aaf3_fk_extras_cu FOREIGN KEY (customfield_id) REFERENCES public.extras_customfield(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_customfieldchoice extras_customfieldch_field_id_35006739_fk_extras_cu; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_customfieldchoice
    ADD CONSTRAINT extras_customfieldch_field_id_35006739_fk_extras_cu FOREIGN KEY (field_id) REFERENCES public.extras_customfield(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_customlink extras_customlink_content_type_id_4d35b063_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_customlink
    ADD CONSTRAINT extras_customlink_content_type_id_4d35b063_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_exporttemplate extras_exporttemplat_content_type_id_59737e21_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_exporttemplate
    ADD CONSTRAINT extras_exporttemplat_content_type_id_59737e21_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_exporttemplate extras_exporttemplat_owner_content_type_i_6bb67821_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_exporttemplate
    ADD CONSTRAINT extras_exporttemplat_owner_content_type_i_6bb67821_fk_django_co FOREIGN KEY (owner_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_imageattachment extras_imageattachme_content_type_id_90e0643d_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_imageattachment
    ADD CONSTRAINT extras_imageattachme_content_type_id_90e0643d_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_jobresult extras_jobresult_obj_type_id_475e80aa_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_jobresult
    ADD CONSTRAINT extras_jobresult_obj_type_id_475e80aa_fk_django_content_type_id FOREIGN KEY (obj_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_jobresult extras_jobresult_user_id_d35285ab_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_jobresult
    ADD CONSTRAINT extras_jobresult_user_id_d35285ab_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_objectchange extras_objectchange_changed_object_type__b755bb60_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_objectchange
    ADD CONSTRAINT extras_objectchange_changed_object_type__b755bb60_fk_django_co FOREIGN KEY (changed_object_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_objectchange extras_objectchange_related_object_type__fe6e521f_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_objectchange
    ADD CONSTRAINT extras_objectchange_related_object_type__fe6e521f_fk_django_co FOREIGN KEY (related_object_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_objectchange extras_objectchange_user_id_7fdf8186_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_objectchange
    ADD CONSTRAINT extras_objectchange_user_id_7fdf8186_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_relationship extras_relationship_destination_type_id_fb7387c3_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_relationship
    ADD CONSTRAINT extras_relationship_destination_type_id_fb7387c3_fk_django_co FOREIGN KEY (destination_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_relationship extras_relationship_source_type_id_21183ad6_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_relationship
    ADD CONSTRAINT extras_relationship_source_type_id_21183ad6_fk_django_co FOREIGN KEY (source_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_relationshipassociation extras_relationshipa_destination_type_id_5ccb6728_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_relationshipassociation
    ADD CONSTRAINT extras_relationshipa_destination_type_id_5ccb6728_fk_django_co FOREIGN KEY (destination_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_relationshipassociation extras_relationshipa_relationship_id_9a65ccc8_fk_extras_re; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_relationshipassociation
    ADD CONSTRAINT extras_relationshipa_relationship_id_9a65ccc8_fk_extras_re FOREIGN KEY (relationship_id) REFERENCES public.extras_relationship(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_relationshipassociation extras_relationshipa_source_type_id_28c8df60_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_relationshipassociation
    ADD CONSTRAINT extras_relationshipa_source_type_id_28c8df60_fk_django_co FOREIGN KEY (source_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_status_content_types extras_status_conten_contenttype_id_38503e74_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_status_content_types
    ADD CONSTRAINT extras_status_conten_contenttype_id_38503e74_fk_django_co FOREIGN KEY (contenttype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_status_content_types extras_status_conten_status_id_27c665c7_fk_extras_st; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_status_content_types
    ADD CONSTRAINT extras_status_conten_status_id_27c665c7_fk_extras_st FOREIGN KEY (status_id) REFERENCES public.extras_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_taggeditem extras_taggeditem_content_type_id_ba5562ed_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_taggeditem
    ADD CONSTRAINT extras_taggeditem_content_type_id_ba5562ed_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_taggeditem extras_taggeditem_tag_id_d48af7c7_fk_extras_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_taggeditem
    ADD CONSTRAINT extras_taggeditem_tag_id_d48af7c7_fk_extras_tag_id FOREIGN KEY (tag_id) REFERENCES public.extras_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_webhook_content_types extras_webhook_conte_contenttype_id_3fc2c4d3_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_webhook_content_types
    ADD CONSTRAINT extras_webhook_conte_contenttype_id_3fc2c4d3_fk_django_co FOREIGN KEY (contenttype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extras_webhook_content_types extras_webhook_conte_webhook_id_0c169800_fk_extras_we; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.extras_webhook_content_types
    ADD CONSTRAINT extras_webhook_conte_webhook_id_0c169800_fk_extras_we FOREIGN KEY (webhook_id) REFERENCES public.extras_webhook(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_aggregate ipam_aggregate_rir_id_ef7a27bd_fk_ipam_rir_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_aggregate
    ADD CONSTRAINT ipam_aggregate_rir_id_ef7a27bd_fk_ipam_rir_id FOREIGN KEY (rir_id) REFERENCES public.ipam_rir(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_aggregate ipam_aggregate_tenant_id_637dd1a1_fk_tenancy_tenant_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_aggregate
    ADD CONSTRAINT ipam_aggregate_tenant_id_637dd1a1_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_ipaddress ipam_ipaddress_assigned_object_type_02354370_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_assigned_object_type_02354370_fk_django_co FOREIGN KEY (assigned_object_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_ipaddress ipam_ipaddress_nat_inside_id_a45fb7c5_fk_ipam_ipaddress_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_nat_inside_id_a45fb7c5_fk_ipam_ipaddress_id FOREIGN KEY (nat_inside_id) REFERENCES public.ipam_ipaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_ipaddress ipam_ipaddress_status_id_942778b7_fk_extras_status_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_status_id_942778b7_fk_extras_status_id FOREIGN KEY (status_id) REFERENCES public.extras_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_ipaddress ipam_ipaddress_tenant_id_ac55acfd_fk_tenancy_tenant_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_tenant_id_ac55acfd_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_ipaddress ipam_ipaddress_vrf_id_51fcc59b_fk_ipam_vrf_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_ipaddress
    ADD CONSTRAINT ipam_ipaddress_vrf_id_51fcc59b_fk_ipam_vrf_id FOREIGN KEY (vrf_id) REFERENCES public.ipam_vrf(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_prefix ipam_prefix_role_id_0a98d415_fk_ipam_role_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_role_id_0a98d415_fk_ipam_role_id FOREIGN KEY (role_id) REFERENCES public.ipam_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_prefix ipam_prefix_site_id_0b20df05_fk_dcim_site_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_site_id_0b20df05_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_prefix ipam_prefix_status_id_cffa56c0_fk_extras_status_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_status_id_cffa56c0_fk_extras_status_id FOREIGN KEY (status_id) REFERENCES public.extras_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_prefix ipam_prefix_tenant_id_7ba1fcc4_fk_tenancy_tenant_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_tenant_id_7ba1fcc4_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_prefix ipam_prefix_vlan_id_1db91bff_fk_ipam_vlan_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_vlan_id_1db91bff_fk_ipam_vlan_id FOREIGN KEY (vlan_id) REFERENCES public.ipam_vlan(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_prefix ipam_prefix_vrf_id_34f78ed0_fk_ipam_vrf_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_prefix
    ADD CONSTRAINT ipam_prefix_vrf_id_34f78ed0_fk_ipam_vrf_id FOREIGN KEY (vrf_id) REFERENCES public.ipam_vrf(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_routetarget ipam_routetarget_tenant_id_5a0b35e8_fk_tenancy_tenant_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_routetarget
    ADD CONSTRAINT ipam_routetarget_tenant_id_5a0b35e8_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_service ipam_service_device_id_b4d2bb9c_fk_dcim_device_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_service
    ADD CONSTRAINT ipam_service_device_id_b4d2bb9c_fk_dcim_device_id FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_service_ipaddresses ipam_service_ipaddre_ipaddress_id_b4138c6d_fk_ipam_ipad; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_service_ipaddresses
    ADD CONSTRAINT ipam_service_ipaddre_ipaddress_id_b4138c6d_fk_ipam_ipad FOREIGN KEY (ipaddress_id) REFERENCES public.ipam_ipaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_service_ipaddresses ipam_service_ipaddresses_service_id_ae26b9ab_fk_ipam_service_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_service_ipaddresses
    ADD CONSTRAINT ipam_service_ipaddresses_service_id_ae26b9ab_fk_ipam_service_id FOREIGN KEY (service_id) REFERENCES public.ipam_service(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_service ipam_service_virtual_machine_id_e8b53562_fk_virtualiz; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_service
    ADD CONSTRAINT ipam_service_virtual_machine_id_e8b53562_fk_virtualiz FOREIGN KEY (virtual_machine_id) REFERENCES public.virtualization_virtualmachine(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_vlan ipam_vlan_group_id_88cbfa62_fk_ipam_vlangroup_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_group_id_88cbfa62_fk_ipam_vlangroup_id FOREIGN KEY (group_id) REFERENCES public.ipam_vlangroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_vlan ipam_vlan_role_id_f5015962_fk_ipam_role_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_role_id_f5015962_fk_ipam_role_id FOREIGN KEY (role_id) REFERENCES public.ipam_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_vlan ipam_vlan_site_id_a59334e3_fk_dcim_site_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_site_id_a59334e3_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_vlan ipam_vlan_status_id_898aa317_fk_extras_status_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_status_id_898aa317_fk_extras_status_id FOREIGN KEY (status_id) REFERENCES public.extras_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_vlan ipam_vlan_tenant_id_71a8290d_fk_tenancy_tenant_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vlan
    ADD CONSTRAINT ipam_vlan_tenant_id_71a8290d_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_vlangroup ipam_vlangroup_site_id_264f36f6_fk_dcim_site_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vlangroup
    ADD CONSTRAINT ipam_vlangroup_site_id_264f36f6_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_vrf_export_targets ipam_vrf_export_targ_routetarget_id_8d9319f7_fk_ipam_rout; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vrf_export_targets
    ADD CONSTRAINT ipam_vrf_export_targ_routetarget_id_8d9319f7_fk_ipam_rout FOREIGN KEY (routetarget_id) REFERENCES public.ipam_routetarget(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_vrf_export_targets ipam_vrf_export_targets_vrf_id_6f4875c4_fk_ipam_vrf_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vrf_export_targets
    ADD CONSTRAINT ipam_vrf_export_targets_vrf_id_6f4875c4_fk_ipam_vrf_id FOREIGN KEY (vrf_id) REFERENCES public.ipam_vrf(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_vrf_import_targets ipam_vrf_import_targ_routetarget_id_0e05b144_fk_ipam_rout; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vrf_import_targets
    ADD CONSTRAINT ipam_vrf_import_targ_routetarget_id_0e05b144_fk_ipam_rout FOREIGN KEY (routetarget_id) REFERENCES public.ipam_routetarget(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_vrf_import_targets ipam_vrf_import_targets_vrf_id_ed491b19_fk_ipam_vrf_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vrf_import_targets
    ADD CONSTRAINT ipam_vrf_import_targets_vrf_id_ed491b19_fk_ipam_vrf_id FOREIGN KEY (vrf_id) REFERENCES public.ipam_vrf(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ipam_vrf ipam_vrf_tenant_id_498b0051_fk_tenancy_tenant_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.ipam_vrf
    ADD CONSTRAINT ipam_vrf_tenant_id_498b0051_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nautobot_device_onboarding_onboardingtask nautobot_device_onbo_created_device_id_3b7527bb_fk_dcim_devi; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.nautobot_device_onboarding_onboardingtask
    ADD CONSTRAINT nautobot_device_onbo_created_device_id_3b7527bb_fk_dcim_devi FOREIGN KEY (created_device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nautobot_device_onboarding_onboardingdevice nautobot_device_onbo_device_id_59b0d733_fk_dcim_devi; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.nautobot_device_onboarding_onboardingdevice
    ADD CONSTRAINT nautobot_device_onbo_device_id_59b0d733_fk_dcim_devi FOREIGN KEY (device_id) REFERENCES public.dcim_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nautobot_device_onboarding_onboardingtask nautobot_device_onbo_platform_id_29f56ca5_fk_dcim_plat; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.nautobot_device_onboarding_onboardingtask
    ADD CONSTRAINT nautobot_device_onbo_platform_id_29f56ca5_fk_dcim_plat FOREIGN KEY (platform_id) REFERENCES public.dcim_platform(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nautobot_device_onboarding_onboardingtask nautobot_device_onbo_role_id_c4405036_fk_dcim_devi; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.nautobot_device_onboarding_onboardingtask
    ADD CONSTRAINT nautobot_device_onbo_role_id_c4405036_fk_dcim_devi FOREIGN KEY (role_id) REFERENCES public.dcim_devicerole(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nautobot_device_onboarding_onboardingtask nautobot_device_onbo_site_id_5089f3c0_fk_dcim_site; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.nautobot_device_onboarding_onboardingtask
    ADD CONSTRAINT nautobot_device_onbo_site_id_5089f3c0_fk_dcim_site FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_auth_usersocialauth social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.social_auth_usersocialauth
    ADD CONSTRAINT social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tenancy_tenant tenancy_tenant_group_id_7daef6f4_fk_tenancy_tenantgroup_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.tenancy_tenant
    ADD CONSTRAINT tenancy_tenant_group_id_7daef6f4_fk_tenancy_tenantgroup_id FOREIGN KEY (group_id) REFERENCES public.tenancy_tenantgroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tenancy_tenantgroup tenancy_tenantgroup_parent_id_2542fc18_fk_tenancy_t; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.tenancy_tenantgroup
    ADD CONSTRAINT tenancy_tenantgroup_parent_id_2542fc18_fk_tenancy_t FOREIGN KEY (parent_id) REFERENCES public.tenancy_tenantgroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_objectpermission_object_types users_objectpermissi_contenttype_id_594b1cc7_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_objectpermission_object_types
    ADD CONSTRAINT users_objectpermissi_contenttype_id_594b1cc7_fk_django_co FOREIGN KEY (contenttype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_objectpermission_groups users_objectpermissi_group_id_fb7ba6e0_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_objectpermission_groups
    ADD CONSTRAINT users_objectpermissi_group_id_fb7ba6e0_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_objectpermission_groups users_objectpermissi_objectpermission_id_2f7cc117_fk_users_obj; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_objectpermission_groups
    ADD CONSTRAINT users_objectpermissi_objectpermission_id_2f7cc117_fk_users_obj FOREIGN KEY (objectpermission_id) REFERENCES public.users_objectpermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_objectpermission_object_types users_objectpermissi_objectpermission_id_38c7d8f5_fk_users_obj; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_objectpermission_object_types
    ADD CONSTRAINT users_objectpermissi_objectpermission_id_38c7d8f5_fk_users_obj FOREIGN KEY (objectpermission_id) REFERENCES public.users_objectpermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_objectpermission_users users_objectpermissi_objectpermission_id_78a9c2e6_fk_users_obj; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_objectpermission_users
    ADD CONSTRAINT users_objectpermissi_objectpermission_id_78a9c2e6_fk_users_obj FOREIGN KEY (objectpermission_id) REFERENCES public.users_objectpermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_objectpermission_users users_objectpermission_users_user_id_16c0905d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_objectpermission_users
    ADD CONSTRAINT users_objectpermission_users_user_id_16c0905d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_token users_token_user_id_af964690_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.users_token
    ADD CONSTRAINT users_token_user_id_af964690_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: virtualization_cluster virtualization_clust_group_id_de379828_fk_virtualiz; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_cluster
    ADD CONSTRAINT virtualization_clust_group_id_de379828_fk_virtualiz FOREIGN KEY (group_id) REFERENCES public.virtualization_clustergroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: virtualization_cluster virtualization_clust_type_id_4efafb0a_fk_virtualiz; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_cluster
    ADD CONSTRAINT virtualization_clust_type_id_4efafb0a_fk_virtualiz FOREIGN KEY (type_id) REFERENCES public.virtualization_clustertype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: virtualization_cluster virtualization_cluster_site_id_4d5af282_fk_dcim_site_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_cluster
    ADD CONSTRAINT virtualization_cluster_site_id_4d5af282_fk_dcim_site_id FOREIGN KEY (site_id) REFERENCES public.dcim_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: virtualization_cluster virtualization_cluster_tenant_id_bc2868d0_fk_tenancy_tenant_id; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_cluster
    ADD CONSTRAINT virtualization_cluster_tenant_id_bc2868d0_fk_tenancy_tenant_id FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: virtualization_virtualmachine virtualization_virtu_cluster_id_6c9f9047_fk_virtualiz; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_cluster_id_6c9f9047_fk_virtualiz FOREIGN KEY (cluster_id) REFERENCES public.virtualization_cluster(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: virtualization_virtualmachine virtualization_virtu_local_context_data_o_f760366b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_local_context_data_o_f760366b_fk_django_co FOREIGN KEY (local_context_data_owner_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: virtualization_virtualmachine virtualization_virtu_platform_id_a6c5ccb2_fk_dcim_plat; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_platform_id_a6c5ccb2_fk_dcim_plat FOREIGN KEY (platform_id) REFERENCES public.dcim_platform(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: virtualization_virtualmachine virtualization_virtu_primary_ip4_id_942e42ae_fk_ipam_ipad; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_primary_ip4_id_942e42ae_fk_ipam_ipad FOREIGN KEY (primary_ip4_id) REFERENCES public.ipam_ipaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: virtualization_virtualmachine virtualization_virtu_primary_ip6_id_b7904e73_fk_ipam_ipad; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_primary_ip6_id_b7904e73_fk_ipam_ipad FOREIGN KEY (primary_ip6_id) REFERENCES public.ipam_ipaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: virtualization_virtualmachine virtualization_virtu_role_id_0cc898f9_fk_dcim_devi; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_role_id_0cc898f9_fk_dcim_devi FOREIGN KEY (role_id) REFERENCES public.dcim_devicerole(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: virtualization_virtualmachine virtualization_virtu_status_id_ff17be20_fk_extras_st; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_status_id_ff17be20_fk_extras_st FOREIGN KEY (status_id) REFERENCES public.extras_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: virtualization_virtualmachine virtualization_virtu_tenant_id_d00d1d77_fk_tenancy_t; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_virtualmachine
    ADD CONSTRAINT virtualization_virtu_tenant_id_d00d1d77_fk_tenancy_t FOREIGN KEY (tenant_id) REFERENCES public.tenancy_tenant(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: virtualization_vminterface virtualization_vmint_untagged_vlan_id_aea4fc69_fk_ipam_vlan; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_vminterface
    ADD CONSTRAINT virtualization_vmint_untagged_vlan_id_aea4fc69_fk_ipam_vlan FOREIGN KEY (untagged_vlan_id) REFERENCES public.ipam_vlan(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: virtualization_vminterface virtualization_vmint_virtual_machine_id_e9f89829_fk_virtualiz; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_vminterface
    ADD CONSTRAINT virtualization_vmint_virtual_machine_id_e9f89829_fk_virtualiz FOREIGN KEY (virtual_machine_id) REFERENCES public.virtualization_virtualmachine(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: virtualization_vminterface_tagged_vlans virtualization_vmint_vlan_id_4e77411e_fk_ipam_vlan; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans
    ADD CONSTRAINT virtualization_vmint_vlan_id_4e77411e_fk_ipam_vlan FOREIGN KEY (vlan_id) REFERENCES public.ipam_vlan(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: virtualization_vminterface_tagged_vlans virtualization_vmint_vminterface_id_904b12de_fk_virtualiz; Type: FK CONSTRAINT; Schema: public; Owner: nautobot
--

ALTER TABLE ONLY public.virtualization_vminterface_tagged_vlans
    ADD CONSTRAINT virtualization_vmint_vminterface_id_904b12de_fk_virtualiz FOREIGN KEY (vminterface_id) REFERENCES public.virtualization_vminterface(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

