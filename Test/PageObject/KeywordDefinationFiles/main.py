import self as self

from Test.PageObject.KeywordDefinationFiles.Maticson import Maticson


def something():
    print(Maticson.string_format(self, ".//*[@class='listview listview-scroll']/ul[1]//*[@data-item-marker='", "123","']"))


if __name__ == '__main__':
    something()
