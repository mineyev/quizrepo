<?php
require_once '../bootstrap.php';

class TestCommand extends \PHPUnit_Framework_TestCase {

	/**
	 * @dataProvider generateTestData
	 * @param string $value
	 */
	public function testHandle($expected, $input) {
		echo $path = SOURCE_PATH . 'command.php';
		if ($input) {
			$input  = '"' . $input . '"';
		}
		$command = 'php ' . $path . ' ' . $input;
		$this->assertEquals($expected, exec($command));
	}

	/**
	 * @return array
	 */
	public function generateTestData() {
		return [
			['!dlrw llH', 'Hello wOrld!'],
			['10000', 'Aoooo00001'],
			['Аргумент функции отсутствует!', '']
		];
	}

}
