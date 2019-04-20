FROM swift:5.0
COPY . /ANTMessageProtocol
WORKDIR /ANTMessageProtocol
RUN swift build
