import random
from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities


def get_chromedriver(headless=False, user_agents=None):
    """Downloads and returns a ChromeDriver instance with options."""
    options = webdriver.ChromeOptions()

    if headless:
        options.add_argument('--headless')
        options.add_argument('--no-sandbox')
        options.add_argument('--ignore-certificate-errors')
        options.add_argument('--disable-dev-shm-usage')
        options.add_argument('--disable-extensions')
        options.add_argument('--disable-gpu')
        options.add_argument('--user-agent={}'.format(random.choice(list(self.user_agents))))


    if user_agents:
        capabilities = DesiredCapabilities.CHROME
        capabilities['chromeOptions'] = options.to_capabilities()
        capabilities['mobileEmulation'] = {'deviceName': random.choice(user_agents)}
        driver = webdriver.Chrome(service=ChromeDriverManager().install(), desired_capabilities=capabilities)
    else:
        driver = webdriver.Chrome(service=ChromeDriverManager().install(), options=options)

    return driver