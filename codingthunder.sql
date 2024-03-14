-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2024 at 10:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'first test', 'firsttest@gmail.com', '123456', 'first test', '2024-02-02 16:43:27'),
(3, 'Krishna', 'krishna@gmail.com', '2486439587', 'Hare Krishna', '0000-00-00 00:00:00'),
(10, 'Vaibhav panday', 'vaibhav@gmail.com', '0976808', 'He is good guy', '2024-03-07 16:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(20) NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `sub_title`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Science of Rocket', 'Rockets are much more interesting than you think', 'first-post', 'Rocket science is the primary branch of aerospace engineering, which is the science of building, or designing rockets. All the rockets follow Newton\'s three laws of motion. According to Newton\'s first law, a rocket will stay on the launch pad until a force blast it off.', 'rocket.png', '2024-02-21 15:41:37.672598'),
(2, 'Science of Neuroscience', 'Neuroscience is deep science', 'second-post', 'At its most basic, neuroscience is the study of the nervous system – from structure to function, development to degeneration, in health and in disease. It covers the whole nervous system, with a primary focus on the brain. Incredibly complex, our brains define who we are and what we do. They store our memories and allow us to learn from them. Our brain cells and their circuits create new thoughts, ideas and movements and reinforce old ones. Their individual connections (synapses) are responsible for a baby’s first steps and every record-breaking athletic performance, with each thought and movement requiring exquisitely precise timing and connections.', 'neuro.png', '2024-03-04 13:49:50.993391'),
(3, 'Science of Psychology', 'Psychology gives you better understanding of human', 'third post', 'Psychology is the scientific study of the mind and behavior. Psychologists are actively involved in studying and understanding mental processes, brain functions, and behavior. The field of psychology is considered a \"Hub Science\" with strong connections to the medical sciences, social sciences, and education (Boyack, Klavans, & Borner, 2005).\r\n\r\nAt Ohio State, the Department of Psychology is organized into eight areas, working to investigate critical aspects of the brain and human behavior.', 'psychology.png', '2024-03-04 13:49:38.590873'),
(4, 'Philosophy', 'Philosophy means your existential intelligence', 'fourt-post', 'Quite literally, the term \"philosophy\" means, \"love of wisdom.\" In a broad sense, philosophy is an activity people undertake when they seek to understand fundamental truths about themselves, the world in which they live, and their relationships to the world and to each other. As an academic discipline philosophy is much the same. Those who study philosophy are perpetually engaged in asking, answering, and arguing for their answers to lifeâ€™s most basic questions. To make such a pursuit more systematic academic philosophy is traditionally divided into major areas of study.\r\n\r\nPhilosophy (\'love of wisdom\' in Ancient Greek) is a systematic study of general and fundamental questions concerning topics like existence, reason, knowledge, value, mind, and language. It is a rational and critical inquiry that reflects on its own methods and assumptions.\r\n\r\nHistorically, many of the individual sciences, such as physics and psychology, formed part of philosophy. However, they are considered separate academic disciplines in the modern sense of the term. Influential traditions in the history of philosophy include Western, Arabic–Persian, Indian, and Chinese philosophy. Western philosophy originated in Ancient Greece and covers a wide area of philosophical subfields. A central topic in Arabic–Persian philosophy is the relation between reason and revelation. Indian philosophy combines the spiritual problem of how to reach enlightenment with the exploration of the nature of reality and the ways of arriving at knowledge. Chinese philosophy focuses principally on practical issues in relation to right social conduct, government, and self-cultivation.', 'philosophy.png', '2024-03-04 13:49:56.338634'),
(5, 'Spirituality', 'Spirituality is our necessity', 'fifth-post', 'Spirituality involves the recognition of a feeling or sense or belief that there is\r\nsomething greater than myself, something more to being human than sensory\r\nexperience, and that the greater whole of which we are part is cosmic or divine in\r\nnature.\r\nSpirituality means knowing that our lives have significance in a context beyond a\r\nmundane everyday existence at the level of biological needs that drive selfishness\r\nand aggression. It means knowing that we are a significant part of a purposeful\r\nunfolding of Life in our universe.\r\nSpirituality involves exploring certain universal themes – love, compassion, altruism,\r\nlife after death, wisdom and truth, with the knowledge that some people such as\r\nsaints or enlightened individuals have achieved and manifested higher levels of\r\ndevelopment than the ordinary person. Aspiring to manifest the attributes of such\r\ninspirational examples often becomes an important part of the journey through life for\r\nspiritually inclined people.\r\nThe spiritual journey involves first healing and affirming the ego so that positive\r\nstates are experienced; with secure self-esteem, belief in self-worth and a capacity\r\nfor love and generosity, a person becomes less constrained by ego defences. An\r\nopening of the heart is an essential aspect of true spirituality. In this regard one may\r\nquestion the spiritual nature of masochistic religious practices such as selfflagellation, which is based on a belief in the wickedness inherent in the body rather\r\nthan on any real connection with, and therefore compassion for, the body. This\r\nillustrates the fact that religion does not always serve the progress of spiritual\r\ndevelopment but may get side-tracked into practices that create pride, feelings of\r\nsuperiority etc. or else lead to a person becoming bogged down in unworthiness,\r\nguilt and shame - all of which emotions are commonly suffered by psychiatric\r\npatients. In short, religion will be taken up by a person in a way that inevitably\r\nreflects their own level of development and maturity.\r\n', 'img.file', '2024-02-16 13:15:37.860955'),
(7, 'College', 'college life', 'sevent-post', 'mpo;sdvsdvjnsoin', '', '2024-02-21 16:08:35.947541'),
(8, 'Coding', 'Coding is a new era', 'eighth-slug', '\"Coding\" typically refers to the process of writing instructions for a computer to execute. This involves using a programming language to create a set of instructions that a computer can follow to perform a specific task or set of tasks. Coding is a fundamental skill in computer science and software development.\r\n\r\nHere are some key points related to coding:\r\n\r\nProgramming Languages: There are various programming languages, each with its syntax and rules. Examples include Python, Java, C++, JavaScript, and many more.\r\n\r\nAlgorithms and Logic: Coding involves designing algorithms and logical structures to solve problems. It requires breaking down a task into smaller, manageable steps that a computer can understand.\r\n\r\nDevelopment Environments: Programmers use integrated development environments (IDEs) or text editors to write, edit, and test their code. These tools provide features like syntax highlighting, debugging, and version control.\r\n\r\nDebugging: Identifying and fixing errors or bugs in the code is an essential part of coding. Debugging involves tracing the code\'s execution to find and resolve issues.\r\n\r\nSoftware Development: Coding is a crucial aspect of software development, where programmers create applications, websites, or software solutions to address specific needs.\r\n\r\nAutomation: Code can be used to automate repetitive tasks, making processes more efficient and reducing the likelihood of human error.\r\n\r\nContinuous Learning: Given the rapidly evolving nature of technology, coders often engage in continuous learning to stay updated on new programming languages, frameworks, and best practices.\r\n\r\nCoding skills are valuable in various fields, including software development, data science, artificial intelligence, and more. Learning to code can empower individuals to solve problems, create innovative solutions, and contribute to technological advancements.\r\n\r\n\r\n\r\n\r\n\r\n', 'coding.png', '0000-00-00 00:00:00.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
