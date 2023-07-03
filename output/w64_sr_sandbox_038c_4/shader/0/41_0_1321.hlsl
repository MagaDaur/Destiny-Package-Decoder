// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:08 2023
cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[165];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  float4 v9 : TEXCOORD9,
  float4 v10 : TEXCOORD10,
  float4 v11 : TEXCOORD11,
  float4 v12 : TEXCOORD12,
  float3 v13 : TEXCOORD30,
  float4 v14 : SV_POSITION0,
  uint v15 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = float4(-0.600000024,-0.310000002,0.100000001,-0.5) + v0.yxyy;
  r1.xyzw = r0.yzyz * float4(1.27499998,1.70000005,1.27499998,1.70000005) + float4(0.100000001,0,0.300000012,0);
  r0.xy = float2(1,1) + -abs(r0.xw);
  r0.xy = max(float2(0,0), r0.xy);
  r0.xy = r0.xy * r0.xy;
  r0.zw = round(r1.wz);
  r0.zw = r1.wz + -r0.zw;
  r1.zw = abs(r0.zw) * float2(-16,-16) + float2(8,8);
  r0.zw = r1.zw * r0.zw;
  r1.zw = abs(r0.zw) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r0.zw = r1.zw * r0.zw;
  r0.zw = r0.zw * float2(0.100000001,0.075000003) + r1.xy;
  r0.z = r0.z * cb0[47].x + cb0[47].z;
  r1.x = round(r0.z);
  r0.z = -r1.x + r0.z;
  r1.x = abs(r0.z) * -16 + 8;
  r0.z = r1.x * r0.z;
  r1.x = abs(r0.z) * 0.224999994 + 0.774999976;
  r0.z = r1.x * r0.z;
  r0.z = r0.z * 0.0250000004 + r0.w;
  r0.w = r1.y + -r0.z;
  r0.z = cb0[133].x * r0.w + r0.z;
  r0.z = r0.z * cb0[46].y + cb0[46].w;
  r0.z = r0.z * 0.5 + 0.5;
  r0.z = frac(r0.z);
  r0.z = r0.z * 2 + -1;
  r0.z = v9.z + abs(r0.z);
  r0.z = saturate(v9.y * abs(r0.z) + v9.x);
  r0.w = r1.y * cb0[45].y + cb0[45].w;
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = frac(r0.w);
  r0.w = r0.w * 2 + -1;
  r0.w = v9.z + abs(r0.w);
  r0.w = saturate(v9.y * abs(r0.w) + v9.x);
  r0.z = r0.w * cb0[137].x + r0.z;
  r0.z = cb0[138].x + r0.z;
  r0.y = r0.z * r0.y;
  r1.xyzw = v0.xyxy * float4(1.27499998,1.70000005,1.27499998,1.70000005) + float4(0.100000001,0,0.300000012,0);
  r0.zw = round(r1.wz);
  r0.zw = r1.wz + -r0.zw;
  r1.zw = abs(r0.zw) * float2(-16,-16) + float2(8,8);
  r0.zw = r1.zw * r0.zw;
  r1.zw = abs(r0.zw) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r0.zw = r1.zw * r0.zw;
  r0.zw = r0.zw * float2(0.100000001,0.075000003) + r1.xy;
  r0.z = r0.z * cb0[47].x + cb0[47].z;
  r1.x = round(r0.z);
  r0.z = -r1.x + r0.z;
  r1.x = abs(r0.z) * -16 + 8;
  r0.z = r1.x * r0.z;
  r1.x = abs(r0.z) * 0.224999994 + 0.774999976;
  r0.z = r1.x * r0.z;
  r0.z = r0.z * 0.0250000004 + r0.w;
  r0.w = r1.y + -r0.z;
  r0.z = cb0[133].x * r0.w + r0.z;
  r0.z = r0.z * cb0[46].y + cb0[46].w;
  r0.z = r0.z * 0.5 + 0.5;
  r0.z = frac(r0.z);
  r0.z = r0.z * 2 + -1;
  r0.z = v9.z + abs(r0.z);
  r0.z = saturate(v9.y * abs(r0.z) + v9.x);
  r0.w = r1.y * cb0[45].y + cb0[45].w;
  r0.w = r0.w * 0.5 + 0.5;
  r0.w = frac(r0.w);
  r0.w = r0.w * 2 + -1;
  r0.w = v9.z + abs(r0.w);
  r0.w = saturate(v9.y * abs(r0.w) + v9.x);
  r0.z = r0.w * cb0[137].x + r0.z;
  r0.z = cb0[138].x + r0.z;
  r0.x = r0.z * r0.x + r0.y;
  r0.x = r0.x * 1.07500005 + -0.075000003;
  r0.x = log2(r0.x);
  r0.y = 1 / cb0[164].x;
  r0.x = r0.y * r0.x;
  r0.x = exp2(r0.x);
  r0.x = cb0[53].y * r0.x;
  r0.y = -0.5 + v3.w;
  r0.y = saturate(0.5 * r0.y);
  r0.x = saturate(r0.x * r0.y);
  r0.x = saturate(v0.z * r0.x);
  r0.x = -cb0[146].x + r0.x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r1.yw = cb0[159].xx;
  r1.xz = float2(0,0);
  r2.xyzw = v0.xyxy + r1.wzwz;
  r1.xyzw = v0.xyxy + r1.xyzw;
  r1.xyzw = r1.xyzw * float4(1.27499998,1.70000005,1.27499998,1.70000005) + float4(0.100000001,0,0.300000012,0);
  r2.xyzw = r2.xyzw * float4(1.27499998,1.70000005,1.27499998,1.70000005) + float4(0.100000001,0,0.300000012,0);
  r0.xy = round(r2.wz);
  r0.xy = r2.wz + -r0.xy;
  r2.zw = abs(r0.xy) * float2(-16,-16) + float2(8,8);
  r0.xy = r2.zw * r0.xy;
  r2.zw = abs(r0.xy) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r0.xy = r2.zw * r0.xy;
  r0.xy = r0.xy * float2(0.100000001,0.075000003) + r2.xy;
  r0.x = r0.x * cb0[47].x + cb0[47].z;
  r0.w = round(r0.x);
  r0.x = r0.x + -r0.w;
  r0.w = abs(r0.x) * -16 + 8;
  r0.x = r0.x * r0.w;
  r0.w = abs(r0.x) * 0.224999994 + 0.774999976;
  r0.x = r0.x * r0.w;
  r0.x = r0.x * 0.0250000004 + r0.y;
  r0.y = r2.y + -r0.x;
  r0.x = cb0[133].x * r0.y + r0.x;
  r0.x = r0.x * cb0[46].y + cb0[46].w;
  r0.x = r0.x * 0.5 + 0.5;
  r0.x = frac(r0.x);
  r0.x = r0.x * 2 + -1;
  r0.x = v9.z + abs(r0.x);
  r0.x = saturate(v9.y * abs(r0.x) + v9.x);
  r0.y = r2.y * cb0[45].y + cb0[45].w;
  r0.y = r0.y * 0.5 + 0.5;
  r0.y = frac(r0.y);
  r0.y = r0.y * 2 + -1;
  r0.y = v9.z + abs(r0.y);
  r0.y = saturate(v9.y * abs(r0.y) + v9.x);
  r0.x = r0.y * cb0[137].x + r0.x;
  r0.x = cb0[138].x + r0.x;
  r0.x = r0.z + -r0.x;
  r2.x = cb0[160].x * r0.x;
  r0.xy = round(r1.wz);
  r0.xy = r1.wz + -r0.xy;
  r1.zw = abs(r0.xy) * float2(-16,-16) + float2(8,8);
  r0.xy = r1.zw * r0.xy;
  r1.zw = abs(r0.xy) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r0.xy = r1.zw * r0.xy;
  r0.xy = r0.xy * float2(0.100000001,0.075000003) + r1.xy;
  r0.x = r0.x * cb0[47].x + cb0[47].z;
  r0.w = round(r0.x);
  r0.x = r0.x + -r0.w;
  r0.w = abs(r0.x) * -16 + 8;
  r0.x = r0.x * r0.w;
  r0.w = abs(r0.x) * 0.224999994 + 0.774999976;
  r0.x = r0.x * r0.w;
  r0.x = r0.x * 0.0250000004 + r0.y;
  r0.y = r1.y + -r0.x;
  r0.x = cb0[133].x * r0.y + r0.x;
  r0.x = r0.x * cb0[46].y + cb0[46].w;
  r0.x = r0.x * 0.5 + 0.5;
  r0.x = frac(r0.x);
  r0.x = r0.x * 2 + -1;
  r0.x = v9.z + abs(r0.x);
  r0.x = saturate(v9.y * abs(r0.x) + v9.x);
  r0.y = r1.y * cb0[45].y + cb0[45].w;
  r0.y = r0.y * 0.5 + 0.5;
  r0.y = frac(r0.y);
  r0.y = r0.y * 2 + -1;
  r0.y = v9.z + abs(r0.y);
  r0.y = saturate(v9.y * abs(r0.y) + v9.x);
  r0.x = r0.y * cb0[137].x + r0.x;
  r0.x = cb0[138].x + r0.x;
  r0.x = r0.z + -r0.x;
  r2.y = cb0[160].x * r0.x;
  r2.z = 1;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = r2.xyz * r0.xxx;
  r0.w = dot(v13.xyz, v13.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v13.xyz * r0.www;
  r0.w = dot(v1.xyz, v1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v1.xyz * r0.www;
  r3.xyz = r2.zxy * r1.yzx;
  r3.xyz = r2.yzx * r1.zxy + -r3.xyz;
  r3.xyz = -r3.xyz * r0.yyy;
  r0.xyw = r1.xyz * r0.xxx + r3.xyz;
  r0.xyz = r2.xyz * r0.zzz + r0.xyw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = max(0, r0.z);
  r0.w = log2(r0.w);
  r0.w = cb0[1].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = cb0[2].x * r0.w;
  r1.x = max(0, r2.z);
  r1.y = max(0, -r2.z);
  r1.y = log2(r1.y);
  r1.y = cb0[11].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = cb0[12].x * r1.y;
  r1.x = log2(r1.x);
  r1.x = cb0[3].x * r1.x;
  r1.x = exp2(r1.x);
  r1.x = cb0[4].x * r1.x;
  r0.w = r0.w * cb0[5].x + r1.x;
  r0.w = cb0[6].x * r0.w;
  r0.w = cb0[7].x * r0.w;
  r1.x = max(0, -r0.z);
  r1.x = log2(r1.x);
  r1.x = cb0[9].x * r1.x;
  r1.x = exp2(r1.x);
  r1.x = cb0[10].x * r1.x;
  r1.x = r1.x * cb0[13].x + r1.y;
  r1.x = cb0[14].x * r1.x;
  r1.xyz = cb0[15].xyz * r1.xxx;
  r1.xyz = r0.www * cb0[8].xyz + r1.xyz;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v2.xyz * r0.www;
  r0.w = dot(r2.xyz, r0.xyz);
  r1.w = r0.w * r0.w;
  r0.w = -r0.w * r0.w + 1;
  r0.w = max(0, r0.w);
  r0.w = log2(r0.w);
  r0.w = cb0[23].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r0.w * cb0[24].x + r0.w;
  r0.w = cb0[25].x * r0.w;
  r2.xyz = cb0[26].xyz * r0.www;
  r0.w = log2(r1.w);
  r1.w = cb0[17].x * r0.w;
  r0.w = cb0[18].x * r0.w;
  r0.w = exp2(r0.w);
  r1.w = exp2(r1.w);
  r0.w = r1.w * cb0[19].x + r0.w;
  r0.w = cb0[20].x * r0.w;
  r2.xyz = r0.www * cb0[21].xyz + r2.xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r1.xyz = cb0[29].xyz * r1.xyz;
  r0.w = max(r1.y, r1.z);
  r0.w = max(r1.x, r0.w);
  r1.w = max(1, r0.w);
  r0.w = 0.0078125 + r0.w;
  r0.w = log2(r0.w);
  r0.w = saturate(r0.w * 0.0769230798 + 0.538461566);
  r0.w = 1 + r0.w;
  o2.y = 0.5 * r0.w;
  o0.xyz = r1.xyz / r1.www;
  o0.w = 0;
  r0.w = saturate(cb0[0].x);
  r0.w = r0.w * 0.125 + 0.375;
  o1.xyz = saturate(r0.xyz * r0.www + float3(0.5,0.5,0.5));
  o1.w = 0;
  o2.w = saturate(cb1[7].z * 0.5 + cb1[7].w);
  o2.xz = float2(0,0);
  return;
}