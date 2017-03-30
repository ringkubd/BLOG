-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2017 at 04:58 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `fabl_cat`
--

CREATE TABLE `fabl_cat` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fabl_cat`
--

INSERT INTO `fabl_cat` (`id`, `name`) VALUES
(1, 'Java'),
(2, 'Php'),
(3, 'Html'),
(4, 'css'),
(5, 'wordpress'),
(6, 'laravell'),
(9, 'JQUERY'),
(10, 'angular js'),
(11, 'JOOMLA');

-- --------------------------------------------------------

--
-- Table structure for table `fabl_contact`
--

CREATE TABLE `fabl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fabl_contact`
--

INSERT INTO `fabl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(2, 'Farhad', 'Ali', 'farhad0507@gmail.com', 'this is sent for testing purpose.', 1, '2017-01-16 20:19:30'),
(3, 'soma', 'sumaya', 'soma@yahoo.com', 'this testng', 1, '2017-01-16 21:41:16'),
(4, 'Moni', 'mona', 'moni@yahoo.com', 'this for testng reason', 0, '2017-01-16 21:41:45'),
(5, 'Mithu', 'Islam', 'mithu0890@yahoo.com', 'this testng inbox count', 0, '2017-01-17 15:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `fabl_footer`
--

CREATE TABLE `fabl_footer` (
  `id` int(11) NOT NULL,
  `copyright` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fabl_footer`
--

INSERT INTO `fabl_footer` (`id`, `copyright`) VALUES
(1, 'Copyright sayalok.com');

-- --------------------------------------------------------

--
-- Table structure for table `fabl_page`
--

CREATE TABLE `fabl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fabl_page`
--

INSERT INTO `fabl_page` (`id`, `name`, `body`) VALUES
(1, 'About US', '<h4>About US</h4>\r\n<p><span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</span></p>'),
(2, 'Privacy Policy', '<h4>&nbsp;</h4>\r\n<p><span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</span></p>'),
(7, 'About Us', '<h4>About US</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>');

-- --------------------------------------------------------

--
-- Table structure for table `fabl_post`
--

CREATE TABLE `fabl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fabl_post`
--

INSERT INTO `fabl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userId`) VALUES
(2, 2, 'Php', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>', 'upload/189433e588.png', 'Farhad', 'Php, programing', '2016-12-01 15:32:20', 5),
(3, 3, 'html', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>', 'upload/ef60a35049.jpg', 'Faisal', 'Html ,structure', '2016-12-01 15:35:14', 1),
(4, 4, 'css', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>', 'upload/7c9ddee1a0.jpg', 'Tarikh', 'css, design', '2016-12-01 15:35:14', 4),
(5, 1, 'Java History', '<p>Java is a general-purpose computer programming language that is concurrent, class-based, object-oriented,[14] and specifically designed to have as few implementation dependencies as possible. It is intended to let application developers "write once, run anywhere" (WORA),[15] meaning that compiled Java code can run on all platforms that support Java without the need for recompilation.[16] Java applications are typically compiled to bytecode that can run on any Java virtual machine (JVM) regardless of computer architecture. As of 2016, Java is one of the most popular programming languages in use,[17][18][19][20] particularly for client-server web applications, with a reported 9 million developers.[21] Java was originally developed by James Gosling at Sun Microsystems (which has since been acquired by Oracle Corporation) and released in 1995 as a core component of Sun Microsystems'' Java platform. The language derives much of its syntax from C and C++, but it has fewer low-level facilities than either of them. The original and reference implementation Java compilers, virtual machines, and class libraries were originally released by Sun under proprietary licences. As of May 2007, in compliance with the specifications of the Java Community Process, Sun relicensed most of its Java technologies under the GNU General Public License. Others have also developed alternative implementations of these Sun technologies, such as the GNU Compiler for Java (bytecode compiler), GNU Classpath (standard libraries), and IcedTea-Web (browser plugin for applets). The latest version is Java 8, which is the only version currently supported for free by Oracle, although earlier versions are supported both by Oracle and other companies on a commercial basis.</p>', 'upload/bbda883817.png', 'Tarikh', 'Java, programing', '2016-12-02 03:16:00', 5),
(6, 2, 'php', '<p>PHP is a server-side scripting language designed primarily for web development but also used as a general-purpose programming language. Originally created by Rasmus Lerdorf in 1994,[5] the PHP reference implementation is now produced by The PHP Development Team.[6] PHP originally stood for Personal Home Page,[5] but it now stands for the recursive acronym PHP: Hypertext Preprocessor.[7] PHP code may be embedded into HTML code, or it can be used in combination with various web template systems, web content management systems and web frameworks. PHP code is usually processed by a PHP interpreter implemented as a module in the web server or as a Common Gateway Interface (CGI) executable. The web server combines the results of the interpreted and executed PHP code, which may be any type of data, including images, with the generated web page. PHP code may also be executed with a command-line interface (CLI) and can be used to implement standalone graphical applications.[8] The standard PHP interpreter, powered by the Zend Engine, is free software released under the PHP License. PHP has been widely ported and can be deployed on most web servers on almost every operating system and platform, free of charge.[9] The PHP language evolved without a written formal specification or standard until 2014, leaving the canonical PHP interpreter as a de facto standard. Since 2014 work has gone on to create a formal PHP specification.[10]</p>', 'upload/1e55dc9a8a.png', 'Jony', 'Php, programing', '2016-12-02 03:16:00', 5),
(7, 3, 'what is html 5?', '<p>ociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>', 'upload/150c6496da.jpg', 'sumaya', 'html', '2016-12-16 16:17:01', 5),
(8, 5, 'Wordpress Theme Development', '<p>A WordPress theme changes&nbsp;the design of your website, often including its layout. Changing your theme changes how your&nbsp;site looks on the front-end, i.e. what a visitor sees when they browse to your site on&nbsp;the&nbsp;web. There are thousands of free WordPress themes in the <a href="https://wordpress.org/themes/">WordPress.org Theme Directory</a>, though many WordPress sites use custom themes.</p>\r\n<h2 id="what-can-themes-do" class="toc-heading">What can themes do? <a class="anchor" href="https://developer.wordpress.org/themes/getting-started/what-is-a-theme/#what-can-themes-do"><span>#</span><span class="screen-reader-text">What can themes do?</span></a></h2>\r\n<p>Themes take the content and data stored by WordPress and display it in the browser. When you create a&nbsp;WordPress theme, you decide&nbsp;how that content looks and is displayed. There are many options available to you when building your theme. For example:</p>\r\n<ul>\r\n<li>Your theme can have different layouts, such as static or responsive, using one column or&nbsp;two.</li>\r\n<li>Your theme can display&nbsp;content anywhere you want it to be displayed.</li>\r\n<li>Your theme can specify which devices or actions make your content visible.</li>\r\n<li>Your theme can customize its typography and design elements using CSS.</li>\r\n<li>Other design elements like images and videos can be included anywhere in your theme.</li>\r\n</ul>\r\n<p>WordPress themes are incredibly powerful. But, as with every web design project, a theme is more than color and layout. Good themes improve engagement with your website&rsquo;s content <em>in addition</em> to being beautiful.</p>\r\n<p class="toc-jump"><a href="https://developer.wordpress.org/themes/getting-started/what-is-a-theme/#top">Top &uarr;</a></p>\r\n<h2 id="what-are-themes-made-of" class="toc-heading">What are themes made of? <a class="anchor" href="https://developer.wordpress.org/themes/getting-started/what-is-a-theme/#what-are-themes-made-of"><span>#</span><span class="screen-reader-text">What are themes made of?</span></a></h2>\r\n<p>At their&nbsp;most basic level, WordPress themes are collections of different files that work&nbsp;together to create what you see, as well as how your site behaves.</p>\r\n<h3 id="required-files" class="toc-heading">Required files <a class="anchor" href="https://developer.wordpress.org/themes/getting-started/what-is-a-theme/#required-files"><span>#</span><span class="screen-reader-text">Required files</span></a></h3>\r\n<p>There are only <strong>two files absolutely required in a WordPress</strong> theme:</p>\r\n<ol>\r\n<li><code>index.php</code>&nbsp;&ndash;&nbsp;the main template file</li>\r\n<li><code>style.css</code>&nbsp;&ndash; the main style file</li>\r\n</ol>\r\n<p>Though not required, you may see additional files in a theme&rsquo;s folder including:</p>\r\n<ul>\r\n<li>PHP files &ndash; including <a title="Template Files Page" href="https://developer.wordpress.org/themes/basics/template-files/">template files</a></li>\r\n<li><a title="Link to the localization section of the theme developer handbook" href="https://developer.wordpress.org/theme/functionality/localization/">Localization files</a></li>\r\n<li><abbr title="Cascading Style Sheets">CSS</abbr> files</li>\r\n<li>Graphics</li>\r\n<li>JavaScript</li>\r\n<li>Text files &ndash; usually license info<em>, </em><code>readme.txt</code><em>&nbsp;</em>instructions, and a changelog file</li>\r\n</ul>\r\n<p class="toc-jump"><a href="https://developer.wordpress.org/themes/getting-started/what-is-a-theme/#top">Top &uarr;</a></p>\r\n<h2 id="what-is-the-difference-between-a-theme-and-a-plugin" class="toc-heading">What is the difference between a theme and a plugin? <a class="anchor" href="https://developer.wordpress.org/themes/getting-started/what-is-a-theme/#what-is-the-difference-between-a-theme-and-a-plugin"><span>#</span><span class="screen-reader-text">What is the difference between a theme and a plugin?</span></a></h2>\r\n<p>It is common to find cross-over between features&nbsp;found in themes and plugins. However, best practices are:</p>\r\n<ul>\r\n<li>a&nbsp;theme controls the&nbsp;<em>presentation</em> of content; whereas</li>\r\n<li>a plugin is&nbsp;used to control the behavior and features&nbsp;of your WordPress site.</li>\r\n</ul>\r\n<p><strong>Any theme you create should not add critical functionality.</strong>&nbsp;Doing so means that when a&nbsp;user changes their theme, they lose access to that functionality. For example, say you build a theme with a portfolio feature. Users who build their portfolio with your feature will lose it when they cha</p>', 'upload/01e6b113e0.jpg', 'admin', 'Wordpress , theme', '2016-12-16 16:25:50', 1),
(9, 10, 'Angular js tutorial', '<p>This is angular js tutorialThis is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial This is angular js tutorial</p>', 'upload/86b91ec79b.jpg', 'admin', 'learning angular js', '2017-01-17 15:53:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fabl_slider`
--

CREATE TABLE `fabl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fabl_slider`
--

INSERT INTO `fabl_slider` (`id`, `title`, `image`) VALUES
(10, 'Banner One', 'upload/5be69ee79f.jpg'),
(11, 'Banner two', 'upload/5e237d2e55.jpg'),
(12, 'Banner Three', 'upload/8bca19a911.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fabl_social`
--

CREATE TABLE `fabl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fabl_social`
--

INSERT INTO `fabl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'http://www.facebook.com/Romance.world/', 'http://twitter.com/saya.look/', 'http://linkedin.com/sayalok/', 'http://www.google.com/sayalook/');

-- --------------------------------------------------------

--
-- Table structure for table `fabl_theme`
--

CREATE TABLE `fabl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fabl_theme`
--

INSERT INTO `fabl_theme` (`id`, `theme`) VALUES
(1, 'default');

-- --------------------------------------------------------

--
-- Table structure for table `fabl_title_slogan`
--

CREATE TABLE `fabl_title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fabl_title_slogan`
--

INSERT INTO `fabl_title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Programing &amp; solution center', 'solution of all programing problem', 'upload/logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `fabl_user`
--

CREATE TABLE `fabl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fabl_user`
--

INSERT INTO `fabl_user` (`id`, `name`, `password`, `email`, `details`, `role`) VALUES
(1, 'admin', '123', 'sayalok@yahoo.com', '<p>I am Md.Faisal . I am Admin OF this Bolg</p>', 0),
(4, 'Editior', '789', 'editor@yahoo.com', '<p>&nbsp;am Editor OF this Bolg</p>', 2),
(5, 'author', '456', 'author@yahoo.com', '<p>I am Editor OF this Bolg</p>', 1),
(7, 'New USer', '21367868', 'author456@yahoo.com', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fabl_cat`
--
ALTER TABLE `fabl_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fabl_contact`
--
ALTER TABLE `fabl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fabl_footer`
--
ALTER TABLE `fabl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fabl_page`
--
ALTER TABLE `fabl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fabl_post`
--
ALTER TABLE `fabl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fabl_slider`
--
ALTER TABLE `fabl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fabl_social`
--
ALTER TABLE `fabl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fabl_theme`
--
ALTER TABLE `fabl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fabl_title_slogan`
--
ALTER TABLE `fabl_title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fabl_user`
--
ALTER TABLE `fabl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fabl_cat`
--
ALTER TABLE `fabl_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `fabl_contact`
--
ALTER TABLE `fabl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `fabl_footer`
--
ALTER TABLE `fabl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fabl_page`
--
ALTER TABLE `fabl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `fabl_post`
--
ALTER TABLE `fabl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `fabl_slider`
--
ALTER TABLE `fabl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `fabl_social`
--
ALTER TABLE `fabl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fabl_theme`
--
ALTER TABLE `fabl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fabl_title_slogan`
--
ALTER TABLE `fabl_title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fabl_user`
--
ALTER TABLE `fabl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
