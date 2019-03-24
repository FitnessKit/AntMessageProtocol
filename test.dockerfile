FROM swift:4.2
COPY . /ANTMessageProtocol
WORKDIR /ANTMessageProtocol
RUN swift build
