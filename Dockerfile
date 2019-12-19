FROM ccr.ccs.tencentyun.com/lfcent-test/luban-h5:1.0.0 
RUN rm -r /bin/sh && ln -s /bin/bash /bin/sh
COPY ./luban-h5 /app/shell/luban-h5
RUN cd /app/shell/luban-h5/front-end/h5 && yarn && yarn build && yarn engine:build
RUN cd /app/shell/luban-h5/back-end/h5-api && yarn && yarn build && pm2 start
RUN echo "success luban-h5"
