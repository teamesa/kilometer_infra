FROM nginx:1.22.0

# 기존 설정파일 삭제
RUN rm /etc/nginx/conf.d/default.conf
# 수정한 설정파일을 복사
COPY conf.d/default.conf /etc/nginx/conf.d/default.conf

# nginx 기동
CMD ["nginx", "-g", "daemon off;"]

# 포트는 80
EXPOSE 80