from prototype.kernel.create_bot import dp


class BaseHandler:
    dp: dp

    def __init__(self):
        self.dp = dp
