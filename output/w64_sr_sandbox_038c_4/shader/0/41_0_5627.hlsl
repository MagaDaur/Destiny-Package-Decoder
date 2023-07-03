// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:02 2023
Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb1 : register(b1)
{
  float4 cb1[6];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[102];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float3 v5 : TEXCOORD5,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xy = cb12[12].zw * v6.xy;
  r0.w = dot(cb0[6].xy, v3.xy);
  r2.x = cb0[6].z + r0.w;
  r0.w = dot(cb0[7].xy, v3.xy);
  r2.y = cb0[7].z + r0.w;
  r1.zw = r2.yx * cb0[8].yx + cb0[8].wz;
  r2.zw = round(r1.zw);
  r1.zw = -r2.zw + r1.zw;
  r2.zw = abs(r1.zw) * float2(-16,-16) + float2(8,8);
  r1.zw = r2.zw * r1.zw;
  r2.zw = abs(r1.zw) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r1.zw = r2.zw * r1.zw;
  r1.zw = cb0[9].yx * r1.zw + r2.xy;
  r2.zw = r1.wz * cb0[10].yx + cb0[10].wz;
  r3.xy = round(r2.zw);
  r2.zw = -r3.xy + r2.zw;
  r3.xy = abs(r2.zw) * float2(-16,-16) + float2(8,8);
  r2.zw = r3.xy * r2.zw;
  r3.xy = abs(r2.zw) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r2.zw = r3.xy * r2.zw;
  r1.zw = cb0[11].yx * r2.zw + r1.zw;
  r2.zw = r2.xy + -r1.zw;
  r1.zw = cb0[12].xx * r2.zw + r1.zw;
  r1.zw = r1.zw * cb0[13].xy + cb0[13].zw;
  r0.w = t0.Sample(s1_s, r1.zw).x;
  r0.w = -cb0[15].x + r0.w;
  r0.w = r0.w * cb0[14].x + r1.z;
  r0.w = cb0[16].z + r0.w;
  r0.w = saturate(cb0[16].y * abs(r0.w) + cb0[16].x);
  r1.z = cb0[17].z + r2.y;
  r1.z = saturate(cb0[17].y * abs(r1.z) + cb0[17].x);
  r0.w = r1.z * r0.w;
  r1.z = cb0[18].z + r2.x;
  r1.z = saturate(cb0[18].y * abs(r1.z) + cb0[18].x);
  r1.z = log2(r1.z);
  r1.z = cb0[19].x * r1.z;
  r1.z = exp2(r1.z);
  r0.w = r0.w * r1.z + 1;
  r1.zw = v3.yx * cb0[8].yx + cb0[8].wz;
  r2.xy = round(r1.zw);
  r1.zw = -r2.xy + r1.zw;
  r2.xy = abs(r1.zw) * float2(-16,-16) + float2(8,8);
  r1.zw = r2.xy * r1.zw;
  r2.xy = abs(r1.zw) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r1.zw = r2.xy * r1.zw;
  r1.zw = cb0[9].yx * r1.zw + v3.xy;
  r2.xy = r1.wz * cb0[10].yx + cb0[10].wz;
  r2.zw = round(r2.xy);
  r2.xy = r2.xy + -r2.zw;
  r2.zw = abs(r2.xy) * float2(-16,-16) + float2(8,8);
  r2.xy = r2.xy * r2.zw;
  r2.zw = abs(r2.xy) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r2.xy = r2.xy * r2.zw;
  r1.zw = cb0[11].yx * r2.xy + r1.zw;
  r2.xy = v3.xy + -r1.zw;
  r1.zw = cb0[12].xx * r2.xy + r1.zw;
  r1.zw = r1.zw * cb0[13].xy + cb0[13].zw;
  r1.w = t0.Sample(s1_s, r1.zw).x;
  r1.w = -cb0[15].x + r1.w;
  r1.z = r1.w * cb0[14].x + r1.z;
  r1.z = cb0[16].z + r1.z;
  r1.z = saturate(cb0[16].y * abs(r1.z) + cb0[16].x);
  r1.w = cb0[17].z + v3.y;
  r1.w = saturate(cb0[17].y * abs(r1.w) + cb0[17].x);
  r1.z = r1.z * r1.w;
  r1.w = cb0[18].z + v3.x;
  r1.w = saturate(cb0[18].y * abs(r1.w) + cb0[18].x);
  r1.w = log2(r1.w);
  r1.w = cb0[19].x * r1.w;
  r1.w = exp2(r1.w);
  r0.w = r1.z * r1.w + r0.w;
  r0.w = 1 + r0.w;
  r2.x = cb0[68].y * r0.w + cb0[68].x;
  r3.y = cb0[69].x;
  r3.x = 0;
  r3.xyzw = v3.xyxy + r3.yxxy;
  r2.y = dot(cb0[6].xy, r3.xy);
  r4.x = cb0[6].z + r2.y;
  r2.y = dot(cb0[7].xy, r3.xy);
  r4.y = cb0[7].z + r2.y;
  r2.yz = r4.yx * cb0[8].yx + cb0[8].wz;
  r4.zw = round(r2.yz);
  r2.yz = -r4.zw + r2.yz;
  r4.zw = abs(r2.yz) * float2(-16,-16) + float2(8,8);
  r2.yz = r4.zw * r2.yz;
  r4.zw = abs(r2.yz) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r2.yz = r4.zw * r2.yz;
  r2.yz = cb0[9].yx * r2.yz + r4.xy;
  r4.zw = r2.zy * cb0[10].yx + cb0[10].wz;
  r5.xy = round(r4.zw);
  r4.zw = -r5.xy + r4.zw;
  r5.xy = abs(r4.zw) * float2(-16,-16) + float2(8,8);
  r4.zw = r5.xy * r4.zw;
  r5.xy = abs(r4.zw) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r4.zw = r5.xy * r4.zw;
  r2.yz = cb0[11].yx * r4.zw + r2.yz;
  r4.zw = r4.xy + -r2.yz;
  r2.yz = cb0[12].xx * r4.zw + r2.yz;
  r2.yz = r2.yz * cb0[13].xy + cb0[13].zw;
  r2.z = t0.Sample(s1_s, r2.yz).x;
  r2.z = -cb0[15].x + r2.z;
  r2.y = r2.z * cb0[14].x + r2.y;
  r2.y = cb0[16].z + r2.y;
  r2.y = saturate(cb0[16].y * abs(r2.y) + cb0[16].x);
  r2.z = cb0[17].z + r4.y;
  r2.z = saturate(cb0[17].y * abs(r2.z) + cb0[17].x);
  r2.y = r2.y * r2.z;
  r2.z = cb0[18].z + r4.x;
  r2.z = saturate(cb0[18].y * abs(r2.z) + cb0[18].x);
  r2.z = log2(r2.z);
  r2.z = cb0[19].x * r2.z;
  r2.z = exp2(r2.z);
  r2.y = r2.y * r2.z + 1;
  r4.xyzw = r3.yxwz * cb0[8].yxyx + cb0[8].wzwz;
  r5.xyzw = round(r4.xyzw);
  r4.xyzw = -r5.xyzw + r4.xyzw;
  r5.xyzw = abs(r4.xyzw) * float4(-16,-16,-16,-16) + float4(8,8,8,8);
  r4.xyzw = r5.xyzw * r4.xyzw;
  r5.xyzw = abs(r4.xyzw) * float4(0.224999994,0.224999994,0.224999994,0.224999994) + float4(0.774999976,0.774999976,0.774999976,0.774999976);
  r4.xyzw = r5.xyzw * r4.xyzw;
  r4.xyzw = cb0[9].yxyx * r4.xyzw + r3.xyzw;
  r5.xyzw = r4.yxwz * cb0[10].yxyx + cb0[10].wzwz;
  r6.xyzw = round(r5.xyzw);
  r5.xyzw = -r6.xyzw + r5.xyzw;
  r6.xyzw = abs(r5.xyzw) * float4(-16,-16,-16,-16) + float4(8,8,8,8);
  r5.xyzw = r6.xyzw * r5.xyzw;
  r6.xyzw = abs(r5.xyzw) * float4(0.224999994,0.224999994,0.224999994,0.224999994) + float4(0.774999976,0.774999976,0.774999976,0.774999976);
  r5.xyzw = r6.xyzw * r5.xyzw;
  r4.xyzw = cb0[11].yxyx * r5.xyzw + r4.xyzw;
  r5.xyzw = -r4.xyzw + r3.xyzw;
  r4.xyzw = cb0[12].xxxx * r5.xyzw + r4.xyzw;
  r4.xyzw = r4.xyzw * cb0[13].xyxy + cb0[13].zwzw;
  r2.z = t0.Sample(s1_s, r4.xy).x;
  r2.z = -cb0[15].x + r2.z;
  r2.z = r2.z * cb0[14].x + r4.x;
  r2.z = cb0[16].z + r2.z;
  r2.z = saturate(cb0[16].y * abs(r2.z) + cb0[16].x);
  r4.xy = cb0[17].zz + r3.yw;
  r4.xy = saturate(cb0[17].yy * abs(r4.xy) + cb0[17].xx);
  r2.z = r4.x * r2.z;
  r3.xy = cb0[18].zz + r3.xz;
  r3.xy = saturate(cb0[18].yy * abs(r3.xy) + cb0[18].xx);
  r3.xy = log2(r3.xy);
  r3.xy = cb0[19].xx * r3.xy;
  r3.xy = exp2(r3.xy);
  r2.y = r2.z * r3.x + r2.y;
  r2.y = 1 + r2.y;
  r2.y = cb0[68].y * r2.y + cb0[68].x;
  r2.y = r2.x + -r2.y;
  r5.x = cb0[70].x * r2.y;
  r2.y = dot(cb0[6].xy, r3.zw);
  r6.x = cb0[6].z + r2.y;
  r2.y = dot(cb0[7].xy, r3.zw);
  r6.y = cb0[7].z + r2.y;
  r2.yz = r6.yx * cb0[8].yx + cb0[8].wz;
  r3.xz = round(r2.yz);
  r2.yz = -r3.xz + r2.yz;
  r3.xz = abs(r2.yz) * float2(-16,-16) + float2(8,8);
  r2.yz = r3.xz * r2.yz;
  r3.xz = abs(r2.yz) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r2.yz = r3.xz * r2.yz;
  r2.yz = cb0[9].yx * r2.yz + r6.xy;
  r3.xz = r2.zy * cb0[10].yx + cb0[10].wz;
  r6.zw = round(r3.xz);
  r3.xz = -r6.zw + r3.xz;
  r6.zw = abs(r3.xz) * float2(-16,-16) + float2(8,8);
  r3.xz = r6.zw * r3.xz;
  r6.zw = abs(r3.xz) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r3.xz = r6.zw * r3.xz;
  r2.yz = cb0[11].yx * r3.xz + r2.yz;
  r3.xz = r6.xy + -r2.yz;
  r2.yz = cb0[12].xx * r3.xz + r2.yz;
  r2.yz = r2.yz * cb0[13].xy + cb0[13].zw;
  r2.z = t0.Sample(s1_s, r2.yz).x;
  r2.z = -cb0[15].x + r2.z;
  r2.y = r2.z * cb0[14].x + r2.y;
  r2.y = cb0[16].z + r2.y;
  r2.y = saturate(cb0[16].y * abs(r2.y) + cb0[16].x);
  r2.z = cb0[17].z + r6.y;
  r2.z = saturate(cb0[17].y * abs(r2.z) + cb0[17].x);
  r2.y = r2.y * r2.z;
  r2.z = cb0[18].z + r6.x;
  r2.z = saturate(cb0[18].y * abs(r2.z) + cb0[18].x);
  r2.z = log2(r2.z);
  r2.z = cb0[19].x * r2.z;
  r2.z = exp2(r2.z);
  r2.y = r2.y * r2.z + 1;
  r2.z = t0.Sample(s1_s, r4.zw).x;
  r2.z = -cb0[15].x + r2.z;
  r2.z = r2.z * cb0[14].x + r4.z;
  r2.z = cb0[16].z + r2.z;
  r2.z = saturate(cb0[16].y * abs(r2.z) + cb0[16].x);
  r2.z = r2.z * r4.y;
  r2.y = r2.z * r3.y + r2.y;
  r2.y = 1 + r2.y;
  r2.y = cb0[68].y * r2.y + cb0[68].x;
  r2.x = r2.x + -r2.y;
  r5.y = cb0[70].x * r2.x;
  r5.z = 1;
  r2.x = dot(r5.xyz, r5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = r5.xyz * r2.xxx;
  r2.w = min(cb0[71].x, 1);
  r3.x = v7.x ? 1 : -1;
  r3.xyz = v0.xyz * r3.xxx;
  r4.xyz = v2.xyz * r2.yyy;
  r4.xyz = v1.xyz * r2.xxx + r4.xyz;
  r2.xyz = r3.xyz * r2.zzz + r4.xyz;
  r3.x = dot(r2.xyz, r2.xyz);
  r3.x = rsqrt(r3.x);
  r2.xyz = r3.xxx * r2.xyz;
  r0.x = dot(r0.xyz, r2.xyz);
  r0.y = saturate(cb0[101].x);
  r0.z = r0.w * cb0[20].x + cb0[20].y;
  r0.w = cmp(cb0[26].x < cb0[25].x);
  r0.w = r0.w ? 1.000000 : 0;
  r0.x = r0.x * r0.x;
  r3.x = saturate(r0.x * cb0[21].x + cb0[21].y);
  r4.xyz = v5.xyz * cb1[5].www + -cb0[23].xyz;
  r4.xyz = r4.xyz / cb0[22].xyz;
  r3.y = dot(r4.xyz, r4.xyz);
  r3.y = sqrt(r3.y);
  r3.y = saturate(-cb0[12].x + r3.y);
  r3.y = saturate(cb0[24].y * r3.y + cb0[24].x);
  r3.x = r3.x + r3.y;
  r3.x = -1 + r3.x;
  r0.w = r0.w * r3.x + 1;
  r3.x = cmp(0.000000 != cb0[28].x);
  if (r3.x != 0) {
    r3.xy = ddx_coarse(v3.xy);
    r3.x = dot(r3.xy, r3.xy);
    r3.yw = ddy_coarse(v3.xy);
    r3.y = dot(r3.yw, r3.yw);
    r3.xy = sqrt(r3.xy);
    r3.x = max(r3.x, r3.y);
    r3.x = 1 / r3.x;
    r3.x = log2(r3.x);
    r3.y = floor(r3.x);
    r3.y = exp2(r3.y);
    r3.w = ceil(r3.x);
    r3.w = exp2(r3.w);
    r4.xy = v3.xy * r3.yy;
    r4.xy = floor(r4.xy);
    r3.y = dot(r4.xy, float2(17,0.100000001));
    r3.y = sin(r3.y);
    r3.y = 10000 * r3.y;
    r4.x = r4.y * 13 + r4.x;
    r4.x = sin(r4.x);
    r4.x = 0.100000001 + abs(r4.x);
    r3.y = r4.x * r3.y;
    r4.xy = v3.xy * r3.ww;
    r4.xy = floor(r4.xy);
    r3.w = dot(r4.xy, float2(17,0.100000001));
    r3.w = sin(r3.w);
    r3.w = 10000 * r3.w;
    r4.x = r4.y * 13 + r4.x;
    r4.x = sin(r4.x);
    r4.x = 0.100000001 + abs(r4.x);
    r3.w = r4.x * r3.w;
    r3.xyw = frac(r3.xyw);
    r3.w = r3.w + -r3.y;
    r3.y = r3.x * r3.w + r3.y;
    r3.w = 1 + -r3.x;
    r3.x = min(r3.x, r3.w);
    r3.w = r3.y * r3.y;
    r4.x = r3.x + r3.x;
    r4.yw = float2(1,1) + -r3.xy;
    r4.xw = r4.xw * r4.yw;
    r3.w = r3.w / r4.x;
    r4.z = -r3.x * 0.5 + r3.y;
    r4.xz = r4.wz / r4.xy;
    r4.x = 1 + -r4.x;
    r4.y = cmp(r3.y < r4.y);
    r3.x = cmp(r3.y < r3.x);
    r3.x = r3.x ? r3.w : r4.z;
    r3.x = r4.y ? r3.x : r4.x;
    r3.y = cmp(0.5 >= cb0[27].x);
    r3.w = cb0[27].x + cb0[27].x;
    r3.w = r3.x * -r3.w + r3.w;
    r4.x = cb0[27].x * 2 + -2;
    r3.x = r3.x * r4.x + 1;
    r3.x = r3.y ? r3.w : r3.x;
  } else {
    r3.x = cb0[27].x;
  }
  r0.z = r0.z * r0.w + -r3.x;
  r0.z = cmp(r0.z < 0);
  if (r0.z != 0) discard;
  r0.z = -r1.z * r1.w + 1;
  r0.z = r0.z * r0.z;
  r0.z = r0.z * cb0[29].x + cb0[29].y;
  r0.z = cb0[30].x * r0.z;
  r0.z = max(cb0[31].x, r0.z);
  r0.z = min(cb0[32].x, r0.z);
  r1.xy = r1.xy * cb0[33].xy + cb0[33].zw;
  r1.xy = -cb0[34].xy + r1.xy;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = sqrt(r0.w);
  r0.w = saturate(r0.w * cb0[36].x + cb0[36].y);
  r1.xyz = cb0[38].xyz * r0.www + cb0[37].xyz;
  r0.w = max(0, r2.z);
  r0.w = log2(r0.w);
  r0.w = cb0[39].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = cb0[40].x * r0.w;
  r1.w = max(0, r3.z);
  r1.w = log2(r1.w);
  r1.w = cb0[41].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = cb0[42].x * r1.w;
  r0.w = r0.w * cb0[43].x + r1.w;
  r0.w = cb0[44].x * r0.w;
  r0.w = cb0[45].x * r0.w;
  r1.w = max(0, -r2.z);
  r1.w = log2(r1.w);
  r1.w = cb0[47].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = cb0[48].x * r1.w;
  r3.x = max(0, -r3.z);
  r3.x = log2(r3.x);
  r3.x = cb0[49].x * r3.x;
  r3.x = exp2(r3.x);
  r3.x = cb0[50].x * r3.x;
  r1.w = r1.w * cb0[51].x + r3.x;
  r1.w = cb0[52].x * r1.w;
  r3.xyz = cb0[53].xyz * r1.www;
  r3.xyz = r0.www * cb0[46].xyz + r3.xyz;
  r0.w = r0.x * cb0[54].x + cb0[54].y;
  r0.w = max(0, r0.w);
  r0.w = log2(r0.w);
  r1.w = cb0[55].x * r0.w;
  r1.w = exp2(r1.w);
  r0.w = cb0[56].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.w * cb0[57].x + r0.w;
  r0.w = cb0[58].x * r0.w;
  r0.x = r0.x * cb0[60].x + cb0[60].y;
  r0.x = max(0, r0.x);
  r0.x = log2(r0.x);
  r0.x = cb0[61].x * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * cb0[62].x + r0.x;
  r0.x = cb0[63].x * r0.x;
  r4.xyz = cb0[64].xyz * r0.xxx;
  r4.xyz = r0.www * cb0[59].xyz + r4.xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r0.x = v1.w * 0.5 + 0.5;
  r0.x = saturate(r0.x * cb0[65].x + cb0[65].y);
  r0.x = cb0[66].y * r0.x + cb0[66].x;
  r3.xyz = r3.xyz * r0.xxx;
  r3.xyz = cb0[67].xyz * r3.xyz;
  r0.xzw = r0.zzz * r1.xyz + r3.xyz;
  r1.x = max(r0.z, r0.w);
  r1.x = max(r1.x, r0.x);
  r1.yzw = cb0[5].xyz + r0.xzw;
  r1.z = max(r1.z, r1.w);
  r1.y = max(r1.y, r1.z);
  r1.y = saturate(-1 + r1.y);
  r1.y = 1 + -r1.y;
  r0.xzw = cb0[5].xyz * r1.yyy + r0.xzw;
  r1.y = max(r0.z, r0.w);
  r1.y = max(r1.y, r0.x);
  r1.y = max(1, r1.y);
  o0.xyz = r0.xzw / r1.yyy;
  r0.x = min(r0.y, r2.w);
  r0.x = r0.x * 0.125 + 0.375;
  o1.xyz = saturate(r2.xyz * r0.xxx + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r1.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r0.x = 1 + r0.x;
  o2.y = 0.5 * r0.x;
  o0.w = 0;
  o1.w = 0;
  o2.xz = float2(0,0);
  o2.w = v0.w;
  return;
}