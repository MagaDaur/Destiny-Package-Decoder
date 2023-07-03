// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:26 2023
Buffer<float4> t2 : register(t2);

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[138];
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
  uint v9 : SV_VERTEXID0,
  uint v10 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float2 o8 : TEXCOORD8,
  out float4 o9 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v9.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  r0.x = (int)v9.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.5 + -0.5;
  r0.x = round(r0.x);
  r0.y = (int)r0.x;
  r0.z = (uint)r0.y << 1;
  r0.z = (int)-r0.z + (int)v9.x;
  r0.w = (int)r0.y * 9;
  r0.w = (int)r0.w;
  r0.w = cb0[36].x + r0.w;
  r1.xyzw = float4(2,3,6,5) + r0.wwww;
  r1.xyzw = (uint4)r1.xyzw;
  r2.x = t2.Load(r1.x).w;
  r3.xyzw = t2.Load(r1.y).xyzw;
  r1.xyz = t2.Load(r1.z).yzw;
  r2.z = (uint)r0.w;
  o3.xyzw = t2.Load(r2.z).xyzw;
  o5.xyzw = t2.Load(r1.w).xyzw;
  r4.xyz = float3(1,7,8) + r0.www;
  r4.xyz = (uint3)r4.xyz;
  o4.xyzw = t2.Load(r4.x).xyzw;
  r5.xyzw = t2.Load(r4.y).xyzw;
  r0.w = t2.Load(r4.z).x;
  x0[0].y = 0;
  x0[1].y = 1;
  x0[2].y = 0;
  x0[3].y = 1;
  r4.xyz = cb1[1].xyz * r3.yyy;
  r4.xyz = cb1[0].xyz * r3.xxx + r4.xyz;
  r4.xyz = cb1[2].xyz * r3.zzz + r4.xyz;
  r4.xyz = cb1[3].xyz + r4.xyz;
  r1.w = cmp(1 < cb0[112].x);
  if (r1.w != 0) {
    r1.w = cmp((int)r0.y < 0);
    if (r1.w != 0) {
      r1.w = cb0[36].x + 3;
      r1.w = (uint)r1.w;
      r6.xyz = t2.Load(r1.w).xyz;
    } else {
      r1.w = cb0[112].x + -1;
      r0.x = -r1.w + r0.x;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 3 + r0.x;
        r0.x = (uint)r0.x;
        r7.xyz = t2.Load(r0.x).xyz;
        r6.xyz = r3.xyz * float3(2,2,2) + -r7.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 3 + r0.x;
        r0.x = (uint)r0.x;
        r6.xyz = t2.Load(r0.x).xyz;
      }
    }
  } else {
    r6.xyz = float3(0,0,0);
  }
  r3.xyz = cb1[1].zxy * r6.yyy;
  r3.xyz = cb1[0].zxy * r6.xxx + r3.xyz;
  r3.xyz = cb1[2].zxy * r6.zzz + r3.xyz;
  r3.xyz = cb1[3].zxy + r3.xyz;
  r3.xyz = r3.xyz + -r4.zxy;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cmp(9.99999975e-006 < r0.x);
  r3.xyz = r0.xxx ? r3.xyz : float3(0,1,0);
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  r6.xyz = r3.yzx * r0.xxx;
  r7.xyz = cb12[7].xyz + -r4.xyz;
  r8.xyz = r7.yzx * r3.xyz;
  r3.xyz = r3.zxy * r7.zxy + -r8.xyz;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  r3.xyz = r3.xyz * r0.xxx;
  r3.xyz = r3.xyz * r5.yyy;
  r0.x = (int)r0.z;
  r0.x = cmp(r0.x < 0.5);
  r3.xyz = r0.xxx ? -r3.xyz : r3.xyz;
  r3.xyz = r4.xyz + r3.xyz;
  r0.x = dot(r6.xyz, r7.xyz);
  r4.xyz = -r0.xxx * r6.xyz + r7.xyz;
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = rsqrt(r0.x);
  o1.xyz = r4.xyz * r0.xxx;
  r0.x = dot(r7.xyz, r7.xyz);
  r0.y = rsqrt(r0.x);
  r4.xyz = r7.xyz * r0.yyy;
  r0.y = dot(r4.xyz, r6.xyz);
  r1.w = cb0[105].x * 0.0174532942;
  r1.w = cos(r1.w);
  r2.z = cb0[106].x + cb0[105].x;
  r2.z = 0.0174532942 * r2.z;
  r2.z = cos(r2.z);
  r0.y = -r1.w + abs(r0.y);
  r1.w = r2.z + -r1.w;
  r0.y = saturate(r0.y / r1.w);
  r2.y = x0[r0.z+0].y;
  o0.xy = float2(0.200000003,1) * r2.xy;
  r4.xyzw = cb12[1].xyzw * r3.yyyy;
  r4.xyzw = cb12[0].xyzw * r3.xxxx + r4.xyzw;
  r4.xyzw = cb12[2].xyzw * r3.zzzz + r4.xyzw;
  r4.xyzw = cb12[3].xyzw + r4.xyzw;
  r0.x = sqrt(r0.x);
  r0.z = r0.x * 4 + -2;
  r0.x = 10000 + -r0.x;
  r0.x = saturate(min(r0.z, r0.x));
  r0.x = r0.x * r0.y;
  r0.x = cb0[137].x * r0.x;
  r0.y = cmp(0.999000013 < r3.w);
  o0.z = r0.y ? 0 : r0.x;
  o2.xyz = cb12[7].xyz + -r3.xyz;
  o0.w = r4.w;
  o6.x = r2.x;
  o6.yzw = r1.xyz;
  o7.xzw = r5.xyz;
  o7.y = 0;
  o9.xyzw = r4.xyzw;
  o8.x = r5.w;
  o8.y = r0.w;
  return;
}