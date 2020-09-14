<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'ft_server_database' );

/** MySQL database username */
define( 'DB_USER', 'kbatwoma' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/** Filesystem operation method. */
define( 'FS_METHOD', 'direct');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'T>)%9|Y^|T9CHuE5;t@w/Q*:hnrRu+Yf?OkI#YR>]*iFM$Ew[cZxJnxw@(CkM4@<');
define('SECURE_AUTH_KEY',  'z)*+a)?$4e7YB?X9{13t++QBWDC+W`R>Q<i;+b OrDrE#mgYMgpx;5yMA~qVBY-H');
define('LOGGED_IN_KEY',    '/MA-9o2(Lx&h4l.+I;1}N#zuH6D[2R@-Oq/FfgLX]^jD4~m?Z&[k{qr37[Gg}Z<J');
define('NONCE_KEY',        '_i:*4`.cee@)gEp||*Xc,FI|*1 *@.r|n8ExtX%,%!YQ% ~]>Aly7}Gf|7HbCCcI');
define('AUTH_SALT',        'Vt|)xJD|ltf9|{[]^rC6HH$UEr-^DU[gRh$I?Fs|h^1BGz9.7x?]X[kyPm/MF_{C');
define('SECURE_AUTH_SALT', 'GFCK,c| )+ZhoFsL#nb.P*sQ[O-w9~+mu^!=9`Lr3%0=%JlF<|1t(nozp~qK/a2u');
define('LOGGED_IN_SALT',   'v*VCJN;Q/!|86`T<E7#(<;k(ov5PkvK;V$BjEs8:_)!|Xbk{hU^9h-5&N)DG)LS7');
define('NONCE_SALT',       '/}9IGWk$eFS4`MH:&]i|#O!BkPD>3*n%OH|LXJRxw/8343rgFIPFzE]%C>;lyrDF');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );