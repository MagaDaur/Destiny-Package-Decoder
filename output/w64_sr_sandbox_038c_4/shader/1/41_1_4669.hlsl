// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:05 2023
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
  float4 cb0[132];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  uint v5 : SV_VERTEXID0,
  uint v6 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float3 o5 : TEXCOORD5,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v5.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  r0.x = (int)v5.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.5 + -0.5;
  r0.x = round(r0.x);
  r0.y = (int)r0.x;
  r0.z = (uint)r0.y << 1;
  r0.z = (int)-r0.z + (int)v5.x;
  r0.w = (int)r0.y * 5;
  r0.w = (int)r0.w;
  r0.w = cb0[36].x + r0.w;
  r1.x = (uint)r0.w;
  r1.x = t2.Load(r1.x).w;
  r2.xyz = float3(1,3,4) + r0.www;
  r2.xyz = (uint3)r2.xyz;
  r3.xyzw = t2.Load(r2.x).xyzw;
  o3.xyzw = t2.Load(r2.y).xyzw;
  r2.xyz = t2.Load(r2.z).yzw;
  x0[0].y = 0;
  x0[1].y = 1;
  x0[2].y = 0;
  x0[3].y = 1;
  r4.xyz = cb1[1].xyz * r3.yyy;
  r4.xyz = cb1[0].xyz * r3.xxx + r4.xyz;
  r4.xyz = cb1[2].xyz * r3.zzz + r4.xyz;
  r4.xyz = cb1[3].xyz + r4.xyz;
  r0.w = cmp(1 < cb0[120].x);
  if (r0.w != 0) {
    r0.w = cmp((int)r0.y < 0);
    if (r0.w != 0) {
      r0.w = cb0[36].x + 1;
      r0.w = (uint)r0.w;
      r5.xyz = t2.Load(r0.w).xyz;
    } else {
      r0.w = cb0[120].x + -1;
      r0.x = r0.x + -r0.w;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 1 + r0.x;
        r0.x = (uint)r0.x;
        r6.xyz = t2.Load(r0.x).xyz;
        r5.xyz = r3.xyz * float3(2,2,2) + -r6.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 1 + r0.x;
        r0.x = (uint)r0.x;
        r5.xyz = t2.Load(r0.x).xyz;
      }
    }
  } else {
    r5.xyz = float3(0,0,0);
  }
  r0.xyw = cb1[1].zxy * r5.yyy;
  r0.xyw = cb1[0].zxy * r5.xxx + r0.xyw;
  r0.xyw = cb1[2].zxy * r5.zzz + r0.xyw;
  r0.xyw = cb1[3].zxy + r0.xyw;
  r0.xyw = r0.xyw + -r4.zxy;
  r1.z = dot(r0.xyw, r0.xyw);
  r1.z = sqrt(r1.z);
  r1.z = cmp(9.99999975e-006 < r1.z);
  r0.xyw = r1.zzz ? r0.xyw : float3(0,1,0);
  r1.z = dot(r0.xyw, r0.xyw);
  r1.z = rsqrt(r1.z);
  r3.xyz = r1.zzz * r0.ywx;
  r5.xyz = cb12[7].xyz + -r4.xyz;
  r6.xyz = r5.yzx * r0.xyw;
  r0.xyw = r0.wxy * r5.zxy + -r6.xyz;
  r1.z = dot(r0.xyw, r0.xyw);
  r1.z = rsqrt(r1.z);
  r0.xyw = r1.zzz * r0.xyw;
  r0.xyw = r0.xyw * r2.xxx;
  r1.z = (int)r0.z;
  r1.z = cmp(r1.z < 0.5);
  r0.xyw = r1.zzz ? -r0.xyw : r0.xyw;
  r4.xyz = r4.xyz + r0.xyw;
  r1.z = dot(r3.xyz, r5.xyz);
  r3.xyz = -r1.zzz * r3.xyz + r5.xyz;
  r1.z = dot(r3.xyz, r3.xyz);
  r1.z = rsqrt(r1.z);
  r3.xyz = r3.xyz * r1.zzz;
  r1.z = dot(r0.xyw, r0.xyw);
  r1.z = rsqrt(r1.z);
  r0.xyw = r0.xyw * r1.zzz + -r3.xyz;
  o1.xyz = r0.xyw * float3(0.850000024,0.850000024,0.850000024) + r3.xyz;
  r1.y = x0[r0.z+0].y;
  o0.xy = float2(0.200000003,1) * r1.xy;
  r0.xyzw = cb12[1].xyzw * r4.yyyy;
  r0.xyzw = cb12[0].xyzw * r4.xxxx + r0.xyzw;
  r0.xyzw = cb12[2].xyzw * r4.zzzz + r0.xyzw;
  r0.xyzw = cb12[3].xyzw + r0.xyzw;
  r1.y = dot(r5.xyz, r5.xyz);
  r1.y = sqrt(r1.y);
  r1.z = r1.y * 0.333332986 + -1.66666698;
  r1.y = 10000 + -r1.y;
  r1.y = saturate(min(r1.z, r1.y));
  r1.y = cb0[12].y * r1.y;
  r1.y = cb0[131].x * r1.y;
  r1.z = cmp(0.999000013 < r3.w);
  o0.z = r1.z ? 0 : r1.y;
  o2.xyz = cb12[7].xyz + -r4.xyz;
  o0.w = r0.w;
  o4.x = r1.x;
  o4.yzw = float3(0,0,0);
  o6.xyzw = r0.xyzw;
  o5.xyz = r2.xyz;
  return;
}