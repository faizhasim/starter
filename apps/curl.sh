#!/usr/bin/env bash

cat <<EOF > ${HOME}/.curl-format
\n
      content_type: %{content_type}\n
filename_effective: %{filename_effective}\n
    ftp_entry_path: %{ftp_entry_path}\n
         http_code: %{http_code}\n
      http_connect: %{http_connect}\n
          local_ip: %{local_ip}\n
        local_port: %{local_port}\n
      num_connects: %{num_connects}\n
     num_redirects: %{num_redirects}\n
      redirect_url: %{redirect_url}\n
         remote_ip: %{remote_ip}\n
       remote_port: %{remote_port}\n
     size_download: %{size_download}\n
       size_header: %{size_header}\n
      size_request: %{size_request}\n
       size_upload: %{size_upload}\n
    speed_download: %{speed_download}\n
      speed_upload: %{speed_upload}\n
 ssl_verify_result: %{ssl_verify_result}\n
     url_effective: %{url_effective}\n
\n\n
   time_namelookup: %{time_namelookup}\n
      time_connect: %{time_connect}\n
   time_appconnect: %{time_appconnect}\n
  time_pretransfer: %{time_pretransfer}\n
     time_redirect: %{time_redirect}\n
time_starttransfer: %{time_starttransfer}\n
                   -------\n
        time_total: %{time_total}\n
\n
EOF
