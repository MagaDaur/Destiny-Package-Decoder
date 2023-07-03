// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:02 2023
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
  float4 cb0[130];
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
  uint v8 : SV_VERTEXID0,
  uint v9 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float4 o8 : TEXCOORD8,
  out float4 o9 : TEXCOORD9,
  out float3 o10 : TEXCOORD10,
  out float4 o11 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v8.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  r0.x = (int)v8.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.5 + -0.5;
  r0.x = round(r0.x);
  r0.y = (int)r0.x;
  r0.zw = (uint2)r0.yy << int2(1,3);
  r0.z = (int)-r0.z + (int)v8.x;
  r0.w = (int)r0.w;
  r0.w = cb0[36].x + r0.w;
  r1.xyzw = float4(4,5,1,2) + r0.wwww;
  r1.xyzw = (uint4)r1.xyzw;
  r2.x = t2.Load(r1.x).w;
  r3.xyzw = t2.Load(r1.y).xyzw;
  r1.x = (uint)r0.w;
  o3.xyzw = t2.Load(r1.x).xyzw;
  o4.xyzw = t2.Load(r1.z).xyzw;
  o5.xyzw = t2.Load(r1.w).xyzw;
  r1.xy = float2(3,7) + r0.ww;
  r1.xy = (uint2)r1.xy;
  o6.xyzw = t2.Load(r1.x).xyzw;
  r0.w = t2.Load(r1.y).y;
  x0[0].y = 0;
  x0[1].y = 1;
  x0[2].y = 0;
  x0[3].y = 1;
  r1.xyz = cb1[1].xyz * r3.yyy;
  r1.xyz = cb1[0].xyz * r3.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * r3.zzz + r1.xyz;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r1.w = cmp(1 < cb0[126].x);
  if (r1.w != 0) {
    r1.w = cmp((int)r0.y < 0);
    if (r1.w != 0) {
      r1.w = cb0[36].x + 5;
      r1.w = (uint)r1.w;
      r4.xyz = t2.Load(r1.w).xyz;
    } else {
      r1.w = cb0[126].x + -1;
      r0.x = -r1.w + r0.x;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 5 + r0.x;
        r0.x = (uint)r0.x;
        r5.xyz = t2.Load(r0.x).xyz;
        r4.xyz = r3.xyz * float3(2,2,2) + -r5.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 5 + r0.x;
        r0.x = (uint)r0.x;
        r4.xyz = t2.Load(r0.x).xyz;
      }
    }
  } else {
    r4.xyz = float3(0,0,0);
  }
  r3.xyz = cb1[1].zxy * r4.yyy;
  r3.xyz = cb1[0].zxy * r4.xxx + r3.xyz;
  r3.xyz = cb1[2].zxy * r4.zzz + r3.xyz;
  r3.xyz = cb1[3].zxy + r3.xyz;
  r3.xyz = r3.xyz + -r1.zxy;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cmp(9.99999975e-006 < r0.x);
  r3.xyz = r0.xxx ? r3.xyz : float3(0,1,0);
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  r4.xyz = r3.yzx * r0.xxx;
  r5.xyz = cb12[7].xyz + -r1.xyz;
  r6.xyz = r5.yzx * r3.xyz;
  r3.xyz = r3.zxy * r5.zxy + -r6.xyz;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  r3.xyz = r3.xyz * r0.xxx;
  r6.xyz = float3(0.119999997,0.119999997,0.119999997) * r3.xyz;
  r0.x = (int)r0.z;
  r0.x = cmp(r0.x < 0.5);
  r3.xyz = float3(-0.119999997,-0.119999997,-0.119999997) * r3.xyz;
  r3.xyz = r0.xxx ? r3.xyz : r6.xyz;
  r1.xyz = r3.xyz + r1.xyz;
  r0.x = dot(r4.xyz, r5.xyz);
  r3.xyz = -r0.xxx * r4.xyz + r5.xyz;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  o1.xyz = r3.xyz * r0.xxx;
  r0.x = dot(r5.xyz, r5.xyz);
  r0.y = rsqrt(r0.x);
  r3.xyz = r5.xyz * r0.yyy;
  r0.y = dot(r3.xyz, r4.xyz);
  r1.w = cb0[119].x * 0.0174532942;
  r1.w = cos(r1.w);
  r2.z = cb0[120].x + cb0[119].x;
  r2.z = 0.0174532942 * r2.z;
  r2.z = cos(r2.z);
  r0.y = -r1.w + abs(r0.y);
  r1.w = r2.z + -r1.w;
  r0.y = saturate(r0.y / r1.w);
  r2.y = x0[r0.z+0].y;
  o0.xy = float2(0.224999994,1) * r2.xy;
  r4.xyzw = cb12[1].xyzw * r1.yyyy;
  r4.xyzw = cb12[0].xyzw * r1.xxxx + r4.xyzw;
  r4.xyzw = cb12[2].xyzw * r1.zzzz + r4.xyzw;
  r4.xyzw = cb12[3].xyzw + r4.xyzw;
  r0.x = sqrt(r0.x);
  r0.z = r0.x * 0.666666985 + -0.666666985;
  r0.x = 10000 + -r0.x;
  r0.x = saturate(min(r0.z, r0.x));
  r0.x = r0.x * r0.y;
  r0.x = cb0[12].y * r0.x;
  r0.x = cb0[129].x * r0.x;
  r0.y = cmp(0.999000013 < r3.w);
  o0.z = r0.y ? 0 : r0.x;
  o2.xyz = cb12[7].xyz + -r1.xyz;
  o0.w = r4.w;
  o7.xyzw = float4(0,0,0,0);
  o8.xyzw = float4(0,0,0,0);
  o9.x = r2.x;
  o9.yzw = float3(0,0,0);
  o11.xyzw = r4.xyzw;
  o10.xy = float2(0,0);
  o10.z = r0.w;
  return;
}