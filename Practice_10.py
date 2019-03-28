{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "name": "Practice-10.ipynb",
      "version": "0.3.2",
      "provenance": [],
      "collapsed_sections": [],
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/hliblack/ansible-auto/blob/master/Practice_10.py\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "metadata": {
        "id": "qDM2iFBcQxA9",
        "colab_type": "code",
        "outputId": "cd67200e-5ba4-41cd-faf5-74db9295ada9",
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 35
        }
      },
      "cell_type": "code",
      "source": [
        "# 1. 提示用户输入她喜欢的数字，并使用json.dump将这个数字存储到文件中。再编写一个程序，从文件中读取这个值，并打印\n",
        "# 消息 “I know your favorite number! It's _____.” 。\n",
        "\n",
        "import json \n",
        "\n",
        "def get_num():\n",
        "    filename = 'number.json'\n",
        "    try:\n",
        "        with open(filename) as f_obj:\n",
        "            favorite_num = json.load(f_obj)\n",
        "    except FileNotFoundError:\n",
        "        return None\n",
        "    else:\n",
        "        return favorite_num\n",
        "    \n",
        "def store_new_num():\n",
        "    favorite_num = input(\"Pleas input a favorite number: \")\n",
        "    filename = 'number.json'\n",
        "    with open(filename, 'w') as f_obj:\n",
        "        json.dump(favorite_num, f_obj)\n",
        "    return favorite_num\n",
        "    \n",
        "def print_num():\n",
        "    favorite_num = get_num()\n",
        "    if favorite_num:\n",
        "        print(\"I have remember your favorite number! It's \" + favorite_num + \".\")\n",
        "    else:\n",
        "        favorite_num = store_new_num()\n",
        "        print(\"I will remember your favorite number! It's \" + favorite_num + \".\")\n",
        "        \n",
        "print_num()"
      ],
      "execution_count": 0,
      "outputs": [
        {
          "output_type": "stream",
          "text": [
            "I have remember your favorite number! It's 344.\n"
          ],
          "name": "stdout"
        }
      ]
    },
    {
      "metadata": {
        "id": "TwtuuMoei57v",
        "colab_type": "code",
        "colab": {}
      },
      "cell_type": "code",
      "source": [
        "# 2. 记住喜欢的数字 ：将练习 10-11 中的两个程序合而为一。如果存储了用户喜欢的数字，就向用户显示它，否则提示用户输入他喜欢的数字并将其存储到文件中。\n",
        "#    运行这个程序两次，看看它是否像预期的那样工作。\n",
        "\n",
        "import json"
      ],
      "execution_count": 0,
      "outputs": []
    }
  ]
}